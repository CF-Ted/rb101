def reverse_words(string)
  ary = string.split
  ary.each do |word|
    if word.length > 5
      word.reverse!
    end
  end
  ary.join(" ")
end



puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS