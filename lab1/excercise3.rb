num = ARGV

if num.include("--help")
    puts "add any number to give the opposite result, only one number"
    exit
end

number = num[0].include?('.') ? num[0].to_f : num[0].to_i

puts(number * -1)
