# https://atcoder.jp/contests/dp/tasks/dp_d
N, W = gets.chomp.split.map(&:to_i)

dp = []
(N+1).times do |n|
  dp << [0] * (W + 1)
end

1.upto(N) do |i|
  w_i, v_i = gets.chomp.split.map(&:to_i)

  1.upto(W) do |w|
    if w < w_i
      dp[i][w] = dp[i-1][w]
    else
      if dp[i-1][w] < dp[i-1][w-w_i] + v_i
        dp[i][w] = dp[i-1][w-w_i] + v_i
      else
        dp[i][w] = dp[i-1][w]
      end
    end
  end
end

puts dp[N][W]
