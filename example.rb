numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1],
]
# your code goes here
lines = []
index = 0
while index < numbers.length
  stars = []
  row = numbers[index]
  index2 = 0
  while index2 < row.length
    stars << "*" * row[index2]
    index2 = index2 + 1
  end
  lines << stars.join(" ")
  index = index + 1
end
pp lines
# lines.each { |line| puts line }
