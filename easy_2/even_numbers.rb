# given a range of numbers
# iterate over range one by one
# - if even print
# - if odd go to next iteration
# START
# SET a variable array to a range from 1-99 inclusive
# IF even PRINT even number
# ELSE next
# END
numbers = (1..99).to_a
numbers.each do |number|
  if number % 2 == 0
    puts number
  else
    next
  end
end
