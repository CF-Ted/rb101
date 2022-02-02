def palindromic_number?(int)
  string_int = int.to_a
  string_int == string_int.reverse
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

p palindromic_number?(001100)