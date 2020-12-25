# Task: print numbers which contain 3

a = [342, 55, 33, 123, 66, 63, 9]

a.each { |number| puts number if number.to_s.include?('3') }
