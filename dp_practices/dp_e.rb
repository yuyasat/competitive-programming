# https://atcoder.jp/contests/dp/tasks/dp_e
INF = Float::INFINITY
N, W = gets.chomp.split.map(&:to_i)

max_v = 100_100

dp = []
(N+1).times do |n|
  dp << [INF] * (max_v + 1)
end

dp[0][0] = 0

N.times do |i|
  w_i, v_i = gets.chomp.split.map(&:to_i)
  0.upto(max_v) do |v|
    if v - v_i >= 0
      dp[i+1][v] = dp[i][v - v_i] + w_i if dp[i+1][v] > dp[i][v - v_i] + w_i
    end

    dp[i+1][v] = dp[i][v] if dp[i+1][v] > dp[i][v]
  end
end

result = 0
0.upto(max_v) do |v|
  result = v if dp[N][v] <= W
end

puts result
