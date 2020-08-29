K = gets.chomp.to_i


def a_n(n)
  7*(10**(n+1) - 1) / 9
end

def wareru?(k)
  array = [nil] * (k - 1)

  i = 1
  hikaku = ('1'*i).to_i(10)
  res = hikaku % k

  while array[res].nil? do
    puts i
    if res == 0
      return true
    else
      array[res] = true

      i = i + 1
      hikaku = ('1'*i).to_i(10)
      res = hikaku % k
    end
  end

  return false
end

i = 0
atari = nil

while atari.nil? do
  if a_n(i) % K == 0
    atari = i + 1
  end
  i = i + 1
end

puts atari ? atari : -1

# if K % 7 == 0 || wareru?(K)
#   i = 0
#   count = -1
#   while count == -1 do
#     binding.irb
#     if a_n(i) % K == 0
#       count = i
#     end
#     i = i + 1
#   end
#   puts count + 1
# else
#   puts -1
# end

