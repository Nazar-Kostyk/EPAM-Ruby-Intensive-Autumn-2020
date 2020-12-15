def compare_strings(str1, str2)
  # change value of given strings if they are nils or contain forbidden characters
  str1 = '' unless str1 && str1.match?(/\A[a-zA-Z]*\z/)
  str2 = '' unless str2 && str2.match?(/\A[a-zA-Z]*\z/)

  # calculate and compare sums of ASCII codes
  str1.upcase.bytes.sum == str2.upcase.bytes.sum
end

print 'Enter str1: '
str1 = gets.chomp
print 'Enter str2: '
str2 = gets.chomp

if compare_strings(str1, str2)
  puts "#{str1.inspect}, #{str2.inspect} -> equal"
else
  puts "#{str1.inspect}, #{str2.inspect} -> not equal"
end
