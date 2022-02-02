def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

numbers = []
loop do
  prompt('Enter the 1st number: ')
  first = gets.chomp

  if valid_number?(first)
    numbers << first.to_i
    break
  else
    prompt('Please enter a valid number.')
  end
end

loop do
  prompt('Enter the 2nd number: ')
  second = gets.chomp

  if valid_number?(second)
    numbers << second.to_i
    break
  else
    prompt('Please enter a valid number.')
  end
end

loop do
  prompt('Enter the 3rd number: ')
  third = gets.chomp

  if valid_number?(third)
    numbers << third.to_i
    break
  else
    prompt('Please enter a valid number.')
  end
end

loop do
  prompt('Enter the 4th number: ')
  fourth = gets.chomp

  if valid_number?(fourth)
    numbers << fourth.to_i
    break
  else
    prompt('Please enter a valid number.')
  end
end

loop do
  prompt('Enter the 5th number: ')
  fifth = gets.chomp

  if valid_number?(fifth)
    numbers << fifth.to_i
    break
  else
    prompt('Please enter a valid number.')
  end
end

sixth = ''

loop do
  prompt('Enter the last number: ')
  sixth = gets.chomp

  if valid_number?(sixth)
    break
  else
    prompt('Please enter a valid number.')
  end
end

if numbers.bsearch { |element| sixth.to_i <=> element }
  puts "The number #{sixth} appears in #{numbers}."
else
  puts "The number #{sixth} does not appear in #{numbers}."
end
