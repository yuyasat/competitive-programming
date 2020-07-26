n = gets.chomp.to_i
a_n = gets.chomp.split.map(&:to_i)

stock = 0
money = 1000

a_n.each.with_index(0) do |a_i, i|
  if i == a_n.length - 1
    money = money + stock * a_i
    stock = 0
    next
  end

  if a_i < a_n[i+1] && money >= a_i
    stock = money / a_i
    money = money - stock * a_i
  elsif a_i > a_n[i+1]
    money = money + stock * a_i
    stock = 0
  end
end

puts money
