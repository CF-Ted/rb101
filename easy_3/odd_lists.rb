def oddities(array)
  new_array = []
  array.each_index do |index|
    if index.even?
      new_array << array[index]
    end
  end
  new_array
end

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

#further exploration

def oddities(array)
  new_array = []
  array.each_index do |index|
    if index.odd?
      new_array << array[index]
    end
  end
  new_array
end

def oddities(array)
  index = 0
  while index < array.size
    array.delete_at(index)
    index += 2
  end
  array
end

def oddities(array)
  array[(1..).step(2)]
end