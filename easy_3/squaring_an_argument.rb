def multiply(first_num, second_num)
  first_num * second_num
end

def square(number)
  multiply(number, number)
end

square(5) == 25
square(-8) == 64
#further exploration

def power_to(num, exponent)
  case exponent
  when 0 then 1
  when 1 then num
  else exponent * multiply(num, num)
  end
end

p power_to(3, 0)
p power_to(3, 1)
p power_to(3, 3)