puts "Please write a word or multiple words: "
word_input = gets.chomp
words = word_input.delete" "
word_array = words.chars
puts "There are #{word_array.length} characters in \"#{word_input}\"."
