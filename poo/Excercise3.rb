class Ship
    def initialize(draft, crew)
      @draft = draft
      @crew = crew
    end
  
    def is_worth_it
      weigth = @draft - (1.5 * @crew)
      weigth > 20
    end
  end

data = ARGV

if data.include?("--help")
    puts "You only will add two numbers the first number"
    puts "is the amount of gold that the ship has on"
    puts "the second number is the amount of team members onthe ship"
    exit
  end

draft = data[0].to_i
crew = data[1].to_i

ship = Ship.new(draft, crew)  
puts ship.is_worth_it