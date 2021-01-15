def find_index_n(array)
  array.each_index do |i|
    if i != 0 && i != array.size
      return i if array[0...i].sum == array[i + 1...array.size].sum
    end
  end

  -1
end

arr1 = [1, 2, 3, 4, 3, 2, 1]
p arr1
puts find_index_n(arr1)
puts

arr2 = [1, 100, 50, -51, 1, 1]
p arr2
puts find_index_n(arr2)
puts

arr3 = [20, 10, -80, 10, 10, 15, 35]
p arr3
puts find_index_n(arr3)
puts

arr4 = [10, -80, 10, 10, 15, 35]
p arr4
puts find_index_n(arr4)
puts
