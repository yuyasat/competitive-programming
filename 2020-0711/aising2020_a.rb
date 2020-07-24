l, r, d = gets.chomp.split(' ').map(&:to_i)
count = 0
(l..r).to_a.each { |i|
  count = count + 1 if i % d == 0
}
puts count
