N = gets.chomp.to_i
X = gets.chomp
X_chars = X.chars

f = { 0 => 0 }

def popcount(v)
  v = v - ((v >> 1) & 0x55555555)
  v = (v & 0x33333333) + ((v >> 2) & 0x33333333)
  ((v + (v >> 4) & 0xF0F0F0F) * 0x1010101) >> 24
end

# X_one_count = X.chars.select { |a| a == '1' }.length
X_one_count = popcount(X.to_i(2))


N.times do |i|
  x_one_count = X_chars[i] == '0' ? X_one_count + 1 : X_one_count - 1

  chars = X_chars.dup
  chars[i] = { '0' => '1', '1' => '0' }[chars[i]]

  x = chars

  flag = true
  count = 0

  while flag do
    x_one_count = x.select { |a| a == '1' }.length
    binding.irb
    x_suji = x.join.to_i(2)

    if x_suji == 0
      flag = false
    else
      amari = x_one_count == 0 ? 0 : x_suji % x_one_count
  ##    puts "#{x_one_count}:#{amari}"

#      binding.irb
      if !f[amari].nil?
        count = count + f[amari] + 1
        flag = false
      else
        count = count + 1
        if amari == 0
          flag = false
          f[x_suji] = count
        else
          x = amari.to_s(2).rjust(N, '0').chars
  #        puts x.join
   #       puts flag
        end
      end
    end
  end

  puts count
end
