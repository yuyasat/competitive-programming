N = gets.chomp.to_i

waru = 10 ** 9 + 7

puts (10.pow(N, waru) - 2 * (9.pow(N, waru)) + 8.pow(N, waru)) % waru
