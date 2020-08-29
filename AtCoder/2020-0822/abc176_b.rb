N = gets.chomp

goukei = N.chars.map(&:to_i).sum
puts (goukei % 9).zero? ? 'Yes' : 'No'
