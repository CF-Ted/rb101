puts ">> What is the bill amount? "
bill = gets.to_f
bill = bill.round(2)
puts ">> What is the tip percentage? "
tip_percent = gets.to_f
tip = bill * (tip_percent / 100)
tip = tip.round(2)
total = bill + tip
tip = sprintf("%#.2f", tip)
puts "The tip is $#{tip}"
total = sprintf("%#.2f", total)
puts "The total is $#{total}"