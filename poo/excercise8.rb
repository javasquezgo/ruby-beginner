values = ARGV
new_hash = {}

arr_values = values.split(', ')

arr_values.each do |element|
    key, value = element.split('=')
    new_hash[key.to_sym] = value.to_i
end

puts new_hash