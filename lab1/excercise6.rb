# Input array (1D)
input_array = ARGV

if input_array.include?('--help')
    puts "Please put the next sequence: 1 6 7 7 2 4 3 5 9. It's mandatory to be a 3x3 matrix (9 numbers), also make sure to include space between numbers."
    exit
end


matrix_array = []
ARGV.length.times do |i|
  matrix_array << input_array[i].to_i
end
# Define the number of rows and columns for the matrix
num_rows = 3
num_columns = 3
# Initialize an empty 2D matrix
matrix = Array.new(num_rows) { Array.new(num_columns) }
# Fill the matrix with elements from the input array
element_index = 0
(0...num_rows).each do |row|
  (0...num_columns).each do |col|
    matrix[row][col] = matrix_array[element_index]
    element_index += 1
  end
end
# Print the matrix
matrix.each do |row|
  puts row.join(' ')
end
# Creating the traverse of the matrix
diagonal_elements = []
# Traverse diagonals from bottom right to top left
(num_rows + num_columns - 1).downto(0) do |sum|
  row = [sum - num_columns + 1, 0].max
  col = [sum - row, num_columns - 1].min
  while row < num_rows && col >= 0
    diagonal_elements << matrix[row][col]
    row += 1
    col -= 1
  end
end
# Print the diagonal traversal elements
diagonal_elements.each do |element|
  puts element
end
print "result #{diagonal_elements}"
