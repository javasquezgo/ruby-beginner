class Person
    # This is simple the get method
    # will return only the age but can not be updated
    attr_reader :age
  
    # Define constructor method and assign the variable
    def initialize(firstName, lastName, age)
      @firstName = firstName
      @lastName = lastName
      @age = Integer(age)
    end
  
    # Only return the full name of a person
    def full_name
      "#{@firstName} #{@lastName}"
    end
  end
    
data = ARGV

if data.include?("--help")
    puts "You only will add three elements"
    puts "Your first name"
    puts "Your last name"
    puts "And Your age"
    exit
  end

name = data[0]
last_name = data[1]
age = data[2].to_i

person = Person.new(name, last_name, age)
puts person.full_name
puts person.age
  