values = ARGV

if values.include?("--help")
    puts "Add a string or text that looks like this example"
    puts "'a=1, b=2, c=3, d=4'"
    exit
end

new_hash = {}

values.each do |element|
  key, value = element.split('=')
  new_hash[key.to_sym] = value.to_i
end

puts new_hash
