arr = ARGV

if arr.include("--help")
    puts "Add all the elements must be integers "
    puts "that you want to kwow if is even or odd"
    exit
end

arr_num = arr.map {|element| element.to_i }

arr_num.each do |number|
    puts number.even? ? "even" : "odd"
end