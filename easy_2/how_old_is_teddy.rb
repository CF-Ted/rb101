puts "Teddy is #{rand(20...200)} years old!"

#Further exploration

puts "Enter a name: "
name = gets.chomp
if name == ""
  name = "Teddy"
end
age = rand(100)
puts "#{name} is #{age} years old!"