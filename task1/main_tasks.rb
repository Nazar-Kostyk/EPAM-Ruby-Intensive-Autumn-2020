text1 = 'Hello'
text2 = 'World'
puts "#{text1}, #{text2.downcase}!"
puts

var = 'hello'
puts var[0], var[1], var[4]
puts

[5, 0, -3, 2].each { |a| puts "#{a} - #{a.between?(0, 5) ? 'Correct!' : 'Incorrect!'}" }
puts

min = rand(60)
puts "min - #{min}"
puts ['First quarter', 'Second quarter', 'Third quarter', 'Fourth quarter'][min / 15]
puts

print 'Enter year: '
year = gets.chomp.to_i
puts "Is #{year} is a leap year?"
puts ((year % 4).zero? && year % 100 != 0) || (year % 400).zero? ? 'Yes' : 'No'
puts

print 'Enter 6 numbers: '
number = gets.chomp
number = number.split('')
puts number[0..2].map(&:to_i).sum == number[3..number.length - 1].map(&:to_i).reduce(:+)
