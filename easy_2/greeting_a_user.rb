# Ask for users name
# Insert users name into greeting
# - use a separate greeting if name ends with !
# after determining which greeting to use return the greeting
# START
# GET users name
# SET input to a variable name
# IF name ends with ! display all caps greeting
# ELSE use regular greeting
# PRINT greeting
# END

puts "What is your name? "
name = gets.chomp.capitalize
if name.end_with?("!")
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
