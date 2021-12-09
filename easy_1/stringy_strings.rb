def stringy(int, arg = 1)
  ary = []
  int.times do |i|
    if arg != 0
      num = i.even? ? 1 : 0
    else
      num = i.even? ? 0 : 1
    end
    ary << num
  end
  ary.join
end

puts stringy(6, 0) #== '101010'
puts stringy(9) #== '101010101'
puts stringy(4) #== '1010'
puts stringy(7) #== '1010101'