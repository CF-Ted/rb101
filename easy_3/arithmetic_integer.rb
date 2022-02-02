def prompt(message)
  puts("==> #{message}")
end

prompt('Enter the first number:')
first_int = gets.to_i

prompt('Enter the second number:')
second_int = gets.to_i

prompt( "#{first_int} + #{second_int} = #{first_int + second_int}")
prompt( "#{first_int} - #{second_int} = #{first_int - second_int}")
prompt( "#{first_int} * #{second_int} = #{first_int * second_int}")
prompt( "#{first_int} / #{second_int} = #{first_int / second_int}")
prompt( "#{first_int} % #{second_int} = #{first_int % second_int}")
prompt( "#{first_int} ** #{second_int} = #{first_int ** second_int}")
