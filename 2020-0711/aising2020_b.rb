masu_size = gets.chomp.to_i
count = 0
gets.chomp.split(' ').map(&:to_i).each.with_index(1) do |ai, i|
  count = count + 1 if i.odd? && ai.odd?
end
puts count
