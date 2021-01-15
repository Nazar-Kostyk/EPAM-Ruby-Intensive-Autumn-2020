# Task: print total amount of 3 in array numbers

a = [342, 55, 33, 123, 66, 63, 9] 

puts a.reduce(0) { |sum, number| number.to_s.include?('3') ? sum + number.to_s.count('3') : sum }
