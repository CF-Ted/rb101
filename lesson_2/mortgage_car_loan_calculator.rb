# given the loan amount, APR, and loan duration
# calculate monthly interest rate, loan duration in months, monthly payment

def prompt(message)
  puts("=> #{message}")
end

def mon_payment_calc(loan_amount, rate_mon, duration_mon)
  mon_payment = loan_amount * (rate_mon / (1 - (1 + rate_mon)**(-duration_mon)))
end

prompt("Welcome to Loan Calculator!")

prompt("Enter the loan amount:")

loan_amount = ''
loop do
  loan_amount = gets.chomp

  if loan_amount.empty? || loan_amount.to_f < 0
    prompt("Must enter a positive number.")
  else
    break
  end
end

prompt("Enter the Annual Percentage Rate (APR): ")

rate_mon = ''
loop do
  apr = gets.chomp
  if apr.empty? || apr.to_f < 0
    prompt("Must enter positive number.")
  else
    rate_mon = (apr.to_f / 100.0) / 12
    break
  end
end

prompt("Enter how many years are in your loan: (Months is next)")

years = ''
loop do
  years = gets.chomp

  if years.empty? || years.to_i < 0
    prompt("Must enter a positive number.")
  else
    break
  end
end

prompt("Enter how many months are in your loan: ")

months = ''
loop do
  months = gets.chomp
  
  if months.empty? || months.to_i < 0
    prompt("Must enter a positive number.")
  else
    break
  end
end

duration_mon = (years.to_i * 12) + months.to_i

mon_payment = mon_payment_calc(loan_amount.to_f, rate_mon, duration_mon)
rate_mon *= 100
rate_mon = format("%#.2f", rate_mon)
mon_payment = format("%#.2f", mon_payment)

prompt("Your monthly payment is $#{mon_payment}")
prompt("At a monthly rate of #{rate_mon}%")
prompt("You have #{duration_mon} months left.")
