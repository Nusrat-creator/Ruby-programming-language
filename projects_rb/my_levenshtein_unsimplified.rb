def my_levenshtein()
  source = gets.strip.gsub('"', '')
  target = gets.strip.gsub('"', '')

  m = source.length
  n = target.length

  return -1 if m != n

  return n if m == 0
  return m if n == 0

  matrix = Array.new(m + 1) { Array.new(n + 1, 0) }

  (0..m).each { |i| matrix[i][0] = i }
  (0..n).each { |j| matrix[0][j] = j }

  (1..m).each do |i|
    (1..n).each do |j|
      if source[i - 1] == target[j - 1]
        matrix[i][j] = matrix[i - 1][j - 1]
      else
        deletion     = matrix[i - 1][j] + 1
        insertion    = matrix[i][j - 1] + 1
        substitution = matrix[i - 1][j - 1] + 1

        matrix[i][j] = [deletion, insertion, substitution].min
      end
    end
  end

  return matrix[m][n]
end