# Task: create a band name, following next rules:
# 1) 'The' + noun;
# 2) If a noun STARTS and ENDS with the same letter,
#    repeat the noun twice and connect them together 
#    with the first and last letter, combined into one word.

def create_band_name(str)
  if str[0] != str[-1]
    # rule 1
    'The ' + str.capitalize
  else
    # rule 2
    str.capitalize[0...str.length - 1] + str
  end
end

str1 = 'dolphin'
str2 = 'alaska'
str3 = 'europe'

puts create_band_name(str1)
puts create_band_name(str2)
puts create_band_name(str3)
