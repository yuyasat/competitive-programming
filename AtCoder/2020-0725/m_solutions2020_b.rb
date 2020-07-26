a, b, c = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i

flag = false

[:c, :b, :a].repeated_permutation(k).each do |abc_per|
  hash = { a: a, b: b, c: c }
  abc_per.each do |abc|
    hash[abc] = hash[abc] * 2
    if hash[:b] > hash[:a] && hash[:c] > hash[:b]
      flag = true
      break
    end
  end
  break if flag
end

puts(flag ? 'Yes' : 'No')
