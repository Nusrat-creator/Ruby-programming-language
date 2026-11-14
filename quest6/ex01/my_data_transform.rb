require 'csv'

def my_data_transform(param_1)
  return [] if param_1.nil? || param_1.strip.empty?

  lines = param_1.strip.split("\n")
  result = [lines.first]

  lines[1..-1].each do |line|
    row = CSV.parse_line(line)
    next unless row

    email = row[4]
    row[4] = email.include?('@') ? email.split('@').last : email

    age = row[5].to_i
    row[5] = case age
             when 0..20 then "0->20"
             when 21..40 then "21->40"
             when 41..65 then "41->65"
             when 66..99 then "66->99"
             else "100->+"
             end

    order_at = row[9]
    if order_at && order_at.include?(' ')
      hour = order_at.split(' ')[1].split(':')[0].to_i
      row[9] = case hour
               when 0..11 then "morning"
               when 12..17 then "afternoon"
               when 18..23 then "evening"
               else "night"
               end
    end

    result << row.join(',')
  end

  result
end