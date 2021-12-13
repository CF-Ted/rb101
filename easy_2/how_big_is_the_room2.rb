SQFEET_TO_SQINCH = 12
SQFEET_TO_SQCM = 929.03

puts "Enter the length of the room in feet: "
length = gets.chomp
puts "Enter the width of the room in feet: "
width = gets.chomp
area = length.to_f * width.to_f
area_in_inches = area * SQFEET_TO_SQINCH
area_in_cm = area * SQFEET_TO_SQCM
puts "The area of the room is #{area.round(2)} square feet (#{area_in_inches.round(2)} square inches and #{area_in_cm.round(2)} square centimeters)."
