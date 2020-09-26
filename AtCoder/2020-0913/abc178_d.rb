S = gets.chomp.to_i

dp = []
dp.push(1, 0, 0)

3.upto(S) do |i|
  dp[i] ||= 0
  0.upto(i-3) do |j|
    dp[i] += dp[j]
    dp[i] %= 10**9+7
  end
end

puts dp[S]
