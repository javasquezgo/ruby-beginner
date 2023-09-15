class CaesarCipher
    def initialize(number)
        @number = number
    end

    @@alphabet = ('A'..'Z').to_a

    def encode(word)
        secret = word.upcase.chars.map { |element| encode_char(element) }.join
    end

    def decode(word)
        secret = word.upcase.chars.map { |element| decode_char(element) }.join
    end

    def encode_char(char)
        index = @@alphabet.index(char)
        return char if index.nil? # Return the character as is if it's not in the alphabet
        transform(index)
    end

    def decode_char(char)
        index = @@alphabet.index(char)
        return char if index.nil? # Return the character as is if it's not in the alphabet
        detransform(index)
    end

    def transform(element)
        element = (element + @number) % 26
        @@alphabet[element]
    end

    def detransform(element)
        element = (element - @number) % 26
        @@alphabet[element]
    end
end

text = ARGV

if text.include?("--help")
    puts "Add a string in uppercase to have encrypted o deencrypted text"
    exit
  end

text = text.join('')

code = CaesarCipher.new(5)

puts code.encode(text)