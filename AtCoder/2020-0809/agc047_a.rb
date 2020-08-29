require 'bigdecimal'

N = gets.chomp.to_i

count = 0

a_n = []
N.times do |i|
  a_i = BigDecimal(gets.chomp)
  a_n << a_i
  next if i == 0

  0.upto(i-1) do |j|
    count += 1 if a_n[j] * a_i == (a_n[j] * a_i).to_i
  end
end

puts count
