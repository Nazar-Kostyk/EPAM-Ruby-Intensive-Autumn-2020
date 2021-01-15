# Task: convert 'var_test_text' to 'varTestText'.

str = 'var_test_text'

str.gsub!(/_t/, 'T')
puts str
