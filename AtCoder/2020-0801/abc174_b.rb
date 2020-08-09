N, D = gets.chomp.split.map(&:to_i)

count = 0
N.times do |n|
  x, y = gets.chomp.split.map(&:to_i)
  d = Math.sqrt(x**2 + y**2)
  count = count + 1 if d <= D
end

puts count
