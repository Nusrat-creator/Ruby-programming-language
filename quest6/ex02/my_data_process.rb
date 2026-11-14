require 'csv'
require 'json'

def my_data_process(param_1)
  return "{}" if param_1.nil? || param_1.empty?

  header = CSV.parse_line(param_1[0])
  
  discard_cols = ["FirstName", "LastName", "UserName", "Coffee Quantity"]
  
  kept_cols = header.reject { |col| discard_cols.include?(col) }
  
  col_indices = {}
  kept_cols.each do |col|
    col_indices[col] = header.index(col)
  end
  
  result = {}
  kept_cols.each do |col|
    result[col] = {}
  end
  
  param_1[1..-1].each do |line|
    row = CSV.parse_line(line)
    next unless row
    
    kept_cols.each do |col|
      idx = col_indices[col]
      val = row[idx].to_s
      
      unless result[col].key?(val)
        result[col][val] = 0
      end
      
      result[col][val] += 1
    end
  end
  
  JSON.generate(result)
end