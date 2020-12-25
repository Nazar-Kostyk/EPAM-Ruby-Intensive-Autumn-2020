temperatures = [
  33, 15, 17, 20, 23, 23, 28, 40, 21, 19,
  31, 18, 30, 31, 28, 23, 19, 28, 27, 30,
  39, 17, 17, 20, 19, 23, 28, 30, 34, 28
]

# three max values
p temperatures.max(3)
# the same as above
p temperatures.sort[-3, 3]

# three min values
p temperatures.min(3)
# the same as above
p temperatures.sort[0, 3]

# three 'middle' values
temperatures.sort!
p [temperatures[temperatures.size / 2 - 1], temperatures[temperatures.size / 2], temperatures[temperatures.size / 2 + 1]]
