# Task: There is an array with arbitrary numbers.
#       Make the element repeat in the array the number of times that corresponds to its number.

array = [1, 3, 2, 4]

# Didn't fully understand the task, so I implemented two cases:

# 1) if we can create new array
new_array = []
array.each do |element|
  element.times { new_array.push(element) }
end

# 2) if we should change the existing one
array.map! { |element| Array.new(element, element) }.flatten!

p new_array
p array
puts new_array == array
