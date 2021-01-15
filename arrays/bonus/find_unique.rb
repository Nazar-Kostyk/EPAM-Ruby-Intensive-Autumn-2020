def find_unique(array)
  array.find { |el| array.count(el) == 1 }
end

arr1 = [1, 1, 1, 2, 1, 1]
p arr1
puts find_unique(arr1)
puts

arr2 = [0, 0, 0.55, 0, 0]
p arr2
puts find_unique(arr2)
puts

arr3 = [3, 1, 5, 3, 7, 4, 1, 5, 7]
p arr3
puts find_unique(arr3)
puts
