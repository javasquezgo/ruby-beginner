arr = ARGV

if arr.include?("--help")
    puts "Add a list of numbers that will check "
    puts "if there is missing a number "
    exit
end

arr = arr.map {|element| element.to_i}
max_number = arr.max().to_i
arr = arr.sort()
iterator = 1
val = []

while iterator < max_number

    if !arr.include?(iterator)
        val.push(iterator)
    end

    iterator += 1
end
    
puts val