# given a range of 1 and user input
# ask user to have sum or product used
# iterate over range for either sum or product
# return a summary of the range with the end result
# START
# GET integer to be end of range, starting with 1
# SET input as end of range
# GET desired operation, sum or product
# IF sum
# ELSE product
# PRINT range and answer
# END

#def sum_of_range(input)
#  arr = []
#  input.times {|i| arr << (i + 1)}
#  result = arr.sum 
#  puts "The sum of the integers between 1 and #{input} is #{result}."
#end

#def product_of_range(input)
 # arr = []
  #input.times {|i| arr << (i + 1)}
  #index = input
  #product = 1
  #while index > 0
   # product = product * arr.pop
   # index -= 1
  #end
  #puts "The product of the integers between 1 and #{input} is #{product}."
#end

#puts ">> Please enter an integer greater than 0: "
#input = gets.chomp.to_i
#puts ">> Enter 's' to compute the sum, 'p' to compute the product."
#choice = gets.chomp.downcase

#if choice == "s"
  #sum_of_range(input)
#elsif choice == "p"
  #product_of_range(input)
#else
  #puts "You did not select a valid option!"
#end
#further exploration

def compute_sum(number)
  result = (1..number).inject(:+)
  puts "The sum of the integers between 1 and #{number} is #{result}."
end

def compute_product(number)
  result = (1..number).inject(:*)
  puts "The product of the integers between 1 and #{number} is #{result}."
end

puts ">> Please enter an integer greater than 0: "
number = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
choice = gets.chomp.downcase

if choice == "s"
  compute_sum(number)
elsif choice == "p"
  compute_product(number)
else
  puts "You did not select a valid option!"
end