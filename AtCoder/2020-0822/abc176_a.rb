N, X, T = gets.chomp.split.map(&:to_i)

amari = N % X
puts (amari.zero? ? N / X : (N / X) + 1) * T
