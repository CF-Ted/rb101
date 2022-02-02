def palindrome?(string)
  string == string.reverse
end

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

def palindrome_array?(array)
  array == array.reverse
end

palindrome_array?([0,1,2,2,1,0])

def palindrome_str_arr?(arg)
  arg == arg.reverse
end

p palindrome_str_arr?([0,1,2,2,1,0])
p palindrome_str_arr?('356653')