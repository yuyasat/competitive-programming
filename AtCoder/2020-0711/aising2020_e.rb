T = gets.chomp.to_i
T.times do |test_j|
  n = gets.chomp.to_i
  same_large = []
  l_large = []
  r_large = []
  n.times do |n_i|
    k, l, r = gets.chomp.split.map(&:to_i)
    if l == r || k == n
      same_large << [k, l, r]
    elsif l > r
      l_large << [k, l, r]
    else
      r_large << [k, l, r]
    end
  end

  l_large.sort_by!(&:first).reverse!
  l_large_length = l_large.length
  l_large_large_p = l_large_length.times.map.with_index(0) do |li|
    is = l_large.map.with_index { |a, s| [a.first, l_large_length].min >= n - li - 1 ? s : nil }.compact
    sll = is.map { |i| l_large[i] }
    i = sll.index(sll.max { |a| a[1] })
    point = (i ? l_large[i][1] : 0)
    l_large.delete_at(i) if i
    point
  end

  r_large.sort_by!(&:first)
  r_large_length = r_large.length
  r_large_large_p = r_large_length.times.map.with_index(0) do |ri|
    is = r_large.map.with_index { |a, s| [a.first, r_large_length].max <= ri + 1 ? s : nil }.compact
    sll = is.map { |i| r_large[i] }
    i = sll.index(sll.max { |a| a[2] })
    point = (i ? r_large[i][2] : 0)
    r_large.delete_at(i) if i
    point
  end

  puts(
    same_large.sum { |l| l[1] } +
    l_large_large_p.sum + l_large.sum { |l| l[2] } + r_large_large_p.sum + r_large.sum { |r| r[1] }
  )
end
