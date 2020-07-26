# https://atcoder.jp/contests/dp/tasks/dp_c
n = gets.chomp.to_i

results = []
n.times do |_|
  results << { a: 0, b: 0, c: 0 }
end


n.times do |i|
  a, b, c = gets.chomp.split.map(&:to_i)

  if i == 0
    results[i][:a] = a
    results[i][:b] = b
    results[i][:c] = c
  else
    results[i][:a] = [results[i-1][:b] + a, results[i-1][:c] + a].max
    results[i][:b] = [results[i-1][:a] + b, results[i-1][:c] + b].max
    results[i][:c] = [results[i-1][:a] + c, results[i-1][:b] + c].max
  end
end

puts results[-1].values.max
