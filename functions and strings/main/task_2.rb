# Task: convert 'ФІВА олдж' to 'АВІФ ждло' (set string encoding to UTF-8).

str = 'ФІВА олдж'.encode!(Encoding::UTF_8)

splitted_str = str.split(' ')
result = "#{splitted_str[0].reverse} #{splitted_str[1].reverse}".encode!(Encoding::UTF_8)

puts result
puts result.encoding == Encoding::UTF_8
