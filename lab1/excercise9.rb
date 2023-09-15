hash = ARGV

if hash.include?("--help")
    puts "Add a string or text that looks like this example"
    puts " '{2=>['a'], 1=>['b', 'c']}' "
    exit
end

hash = hash[0]



# hash = '{2=>["a"], 1=>["b", "c"]}'

hash = eval(hash)
puts hash
text = ''

hash.each do |key, value|
  value.each do |current|
    text += current * key
  end
end

text_length = text.length

text.split('').permutation(text_length).each do |element|
  puts "#{element.join('')}"
end
