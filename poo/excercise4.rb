puts "Add the first array"
arr = gets.chomp().split(" ").map {|element| element.to_i}


puts "Add the second array"
mixed_arr = gets.chomp().split(" ").map {|element| element.to_i}

num1 = 0
num2 = 0

for num in arr
    num1 += num
end

for num in mixed_arr
    num2 += num
end

puts (num2-num1).abs

=begin
sequence = ARGV

if sequence.length == 0
    return 0
elsif check_arr =~ /[a-z]/
    return 1
else
    rr = sequence.split(" ").map {|num| num.to_i} 
    maxNum = arr.max().to_i
    
    arreglo = []
    iterator = 1

    while iterator <= maxNum do
        
        if !arr.include?(iterator)
            arreglo.push(iterator)
        end

        iterator += 1
    end
end





=begin

if sequence =~ /[a-z]/
    return 1
else
    return 0
end

arr = sequence.split(" ")

        if arr.length() == 0
            return 0
        else
        arr = sequence.split(" ").map {|num| num.to_i} 
    maxNum = arr.max().to_i
    
    arreglo = []
    iterator = 1

    while iterator <= maxNum do
        
        if !arr.include?(iterator)
            arreglo.push(iterator)
        end

        iterator += 1
    end
    
    return arreglo[0]
    end
=end
=end