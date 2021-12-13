puts ">> What is your age? "
current_age = gets.to_i
puts ">> At what age would you like to retire? "
retirement_age = gets.to_i
year = Time.new
year = year.year
puts "It's #{year}. You will retire in #{year + (retirement_age - current_age)}."
puts "You have only #{retirement_age - current_age} years of work to go!"