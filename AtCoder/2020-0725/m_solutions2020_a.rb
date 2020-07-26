x = gets.chomp.to_i

val = if 1800 <= x
        1
      elsif 1600 <= x
        2
      elsif 1400 <= x
        3
      elsif 1200 <= x
        4
      elsif 1000 <= x
        5
      elsif 800 <= x
        6
      elsif 600 <= x
        7
      elsif 400 <= x
        8
      end
puts val
