puts "Enter the length of the room in meters: "
length = gets.chomp
puts "Enter the width of the room in meters: "
width = gets.chomp
area = length.to_f * width.to_f
area_in_feet = area * 10.7639
puts "The area of the room is #{area.round(2)} square meters (#{area_in_feet.round(2)} square feet)."
