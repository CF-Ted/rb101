def xor?(arg1, arg2)
  if arg1 == true && arg2 == true
    false
  elsif arg1 == false && arg2 == false
    false
  else
    true
  end
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == true
