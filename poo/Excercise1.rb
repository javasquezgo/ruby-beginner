class Block
    #attr_accessor is not gonna be use because we only
    #call the variable
    #Initialize the variables that we are gonna use
    def initialize(array)
        @width = array[0]
        @length = array[1]
        @height = array[2]
      end

    #This function only will return the width
    def get_width
        width
    end

    #This function only will return the length
    def get_length
        length
    end

    #This function only will return the height
    def get_height
        @height
    end

    #The function return the volumne by multiply by width,
    #length and height
    def get_volume
        volume = @width * @length * @height
        volume
    end

    #The function return the surface_area of a block
    #was used an existent formula to return the value
    def get_surface_area
        surface_area = 2*((@length*@width)+(@length*@height)+(@width*@height))
        surface_area
    end

end

variable_block = ARGV

if variable_block.include?("--help")
    puts "You only will add three elements"
    puts "First add element width"
    puts "Second add element length"
    puts "Third add element height"
    exit
end

variable_block = variable_block.map {|element| element.to_i}

block = Block.new(variable_block)

puts block.get_volume