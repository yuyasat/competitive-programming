N = gets.chomp.to_i

word = gets.chomp

count = 0

def get_leftmost_w_and_rightmost_r(word)
  [word.index('W'), word.rindex('R')]
end

leftmost_w, rightmost_r = get_leftmost_w_and_rightmost_r(word)

while !leftmost_w.nil? && !rightmost_r.nil? && leftmost_w < rightmost_r
  word[leftmost_w] = 'R'
  word[rightmost_r] = 'W'
  count += 1
  leftmost_w, rightmost_r = get_leftmost_w_and_rightmost_r(word)
end

puts count
