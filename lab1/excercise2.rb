sequence = ARGV

if sequence.include("--help")
    puts "Add all the elements you want to make"
    puts "a list and check if there is any missing number"
    exit
end

sequence = sequence.join("").to_s

if sequence.length == 0
    puts 0
elsif (sequence =~ /[a-z]/)
    puts 1
else
    arr = sequence.split("").to_a.map{|num| num.to_i} 
    maxNum = arr.max().to_i
    
    arreglo = []
    iterator = 1

    while iterator <= maxNum do
        
        if !arr.include?(iterator)
            arreglo.push(iterator)
        end

        iterator += 1
    end
    puts arreglo
end