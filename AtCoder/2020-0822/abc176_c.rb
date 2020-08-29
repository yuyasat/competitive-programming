N = gets.chomp.to_i

results = []

gets.chomp.split.map(&:to_i).each_with_index do |shincho, i|
  if i == 0
    results << { shincho: shincho, dai: 0 }
  else
    maenohitotonosa = (results[i-1][:shincho] + results[i-1][:dai]) - shincho
    if maenohitotonosa > 0
      results << { shincho: shincho, dai: maenohitotonosa }
    else
      results << { shincho: shincho, dai: 0 }
    end
  end
end

puts results.sum { |r| r[:dai] }
