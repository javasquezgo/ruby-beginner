puts 'Add the first array'
arr = gets.chomp.split(' ').map { |element| element.to_i }

puts 'Add the second array'
mixed_arr = gets.chomp.split(' ').map { |element| element.to_i }

num1 = 0
num2 = 0

for num in arr
  num1 += num
end

for num in mixed_arr
  num2 += num
end

puts (num2 - num1).abs
