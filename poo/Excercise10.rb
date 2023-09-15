class Potion
    attr_accessor :color, :volume
  
    def initialize(color, volume)
      @color = color
      @volume = volume
    end
  
    def mix(other_potion)
      total_volume = @volume + other_potion.volume
      new_color = []
  
      # we use a method to modify elements and transform
      # one potion to other one
      3.times do |i|
        new_color[i] =
          ((@color[i] * @volume + other_potion.color[i] * other_potion.volume).to_f / total_volume).ceil
      end
  
      Potion.new(new_color, total_volume)
    end
  end

  data = ARGV

  if data.include?("--help")
    puts "To use this method you must add every number"
    puts "for example you have [255 255 255] 12"
    puts "you must add like this: 255 255 255 12"
    puts "and you have to be aware that must be 8 numbers"
    exit
  end

  data = data.map {|color| color.to_i}

  felix_felicis = Potion.new([data[0], data[1], data[2]], data[3])
  shrinking_solution = Potion.new([data[4], data[5], data[6]], data[7])
  new_potion = felix_felicis.mix(shrinking_solution)
  
  puts "Mixed potion color #{new_potion.color}"
  puts "Mixed potion volume #{new_potion.volume}"
  