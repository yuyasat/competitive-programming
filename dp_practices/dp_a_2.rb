# https://atcoder.jp/contests/dp/tasks/dp_a
n = gets.chomp.to_i
h_n = gets.chomp.split.map(&:to_i)

results = []
n.times do |_|
  results << Float::INFINITY
end

results[0] = 0

h_n.each.with_index(0) do |h_i, i|
  next if i == h_n.length - 1

  cost_to_next_one = results[i] + (h_n[i+1] - h_i).abs
  results[i+1] = cost_to_next_one if results[i+1] > cost_to_next_one

  next if i == h_n.length - 2

  cost_to_next_two = results[i] + (h_n[i+2] - h_i).abs
  results[i+2] = cost_to_next_two if results[i+2] > cost_to_next_two
end

puts results[-1]
