hash = {"a" => 2, "b"=>1, "c"=>1}

text = ""


hash.to_a.each do |element, cantidad|
    text += element * cantidad
end

text_length = text.length

text.split('').permutation(text_length).each do |element|
    puts "#{element.join('')}"
end





=begin a = [ 'a','a','b','c']

a.permutation(4).to_a.each do |word|
    puts "A new word #{word.join('')}"
end
=end

=begin


new_hash = {

}

names = ['Alejandro','Keila', 'Jose','Noelia']

names.each.with_index do |element, index|
    puts "#{index} of #{element}" 
end

names.each.with_index do |element, index|
    new_hash[element.to_sym] = index 
end
puts new_hash 
=end
