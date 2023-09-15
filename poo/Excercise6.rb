class Vector
    def initialize(vectorA, vectorB)
      @vectorA = vectorA
      @vectorB = vectorB
    end
  
    def adding
      [@vectorA[0] + @vectorB[0], @vectorA[1] + @vectorB[1], @vectorA[2] + @vectorB[2]]
    end
  
    def substract
      [@vectorA[0] - @vectorB[0], @vectorA[1] - @vectorB[1], @vectorA[2] + @vectorB[2]]
    end
  
    def equal
      @vectorA[0] == @vectorB[0] && @vectorA[1] == @vectorB[1] && @vectorA[2] == @vectorB[2]
    end
  
    def cross
      [((@vectorA[1] * @vectorB[2]) - (@vectorA[2] * @vectorB[1])),
       ((@vectorA[2] * @vectorB[0]) - (@vectorA[0] * @vectorB[2])),
       ((@vectorA[0] * @vectorB[1]) - (@vectorA[1] * @vectorB[0]))]
    end
  
    def dot
      (@vectorA[0] * @vectorB[0]) + (@vectorA[1] * @vectorB[1]) + (@vectorA[2] * @vectorB[2])
    end
  
    def to_a
      @vectorA
    end
  
    def to_s
      "<#{@vectorA[0]}, #{@vectorA[1]}, #{@vectorA[2]}>"
    end
  
    def magnitude
      Math.sqrt(((@vectorB[0] - @vectorA[0])**2) + ((@vectorB[1] - @vectorA[1])**2) + ((@vectorB[2] - @vectorA[2])**2))
    end
  
    def x
      @vectorA[0]
    end
  
    def y
      @vectorA[1]
    end
  
    def z
      @vectorA[2]
    end
end

data = ARGV

if data.include?("--help")
    puts "You have to use 2 vectors that are in 3D so you will add"
    puts "consecutive the numbers of the vector the first 3 numbers are the first vector"
    puts "the rest are the other vector"
    exit
  end

vector = Vector.new([data[0], data[1], data[2]], [data[3], data[4], data[5]])
puts vector.x