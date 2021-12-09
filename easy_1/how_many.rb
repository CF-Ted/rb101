def count_occurrences(ary)
  counted = {}
  counted.default = 0
  while ary.length > 0
    counted[ary.pop] += 1
  end
  counted.each { |k, v| puts "#{k} => #{v}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)