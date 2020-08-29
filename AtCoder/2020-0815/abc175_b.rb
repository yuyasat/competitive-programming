N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

count = 0
array.combination(3).each do |a, b, c|
  next if a == b || b == c || c == a
  next unless a + b > c && b + c > a && c + a > b

  count += 1
end

puts count
