H, W = gets.chomp.split.map(&:to_i)
C_h, C_w = gets.chomp.split.map(&:to_i)
D_h, D_w = gets.chomp.split.map(&:to_i)

s_array = []
W.times do
  s_array << gets.chomp.split
end

results = []

c_h = C_h
c_w = C_w

count = 0

def bundan?(_c_h, _c_w)
  s_array[_c_h-1, _c_w-1]
  result = []
  _c_h-1.upto(H-1) do |h|
    _c_w-1.upto(W-1) do |w|
      if s_array[h][w] == '#'
        result << [h, w]
        next
      end
    end
  end
end

until c_h == D_h && c_w && D_w
  if ((c_h - 1 == 0 ? 1 : c_h - 1)..(c_h == H ? c_h : c_h + 1)).cover?(D_h) && ((c_w - 1 == 0 ? c_w : c_w - 1)..(c_w == W ? c_w : c_w + 1)).cover?(D_w)
    c_h = D_h
    c_w = D_w
  elsif ((c_h - 5 <= 0 ? 1 : c_h - 5)..(c_h + 5 > H ? H : c_h + 5)).cover?(D_h) && ((c_w - 5 <= 0 ? 1 : c_w - 5)..(c_w >= W ? W : c_w + 5)).cover?(D_w)
    c_h = D_h
    c_w = D_w
    count += 1
  else
  end
end
binding.irb
