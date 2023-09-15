class Food
    def self.CHICKENWINGS
      5
    end
  
    def self.HAMBURGERS
      3
    end
  
    def self.HOTDOGS
      2
    end
  end
  
  class Scoreboard
    @has_finished = false
    def initialize(*args)
      @players = {}
      args.each { |player| @players[player] = 0 }
    end
  
    def score(player_name, food)
      if !@has_finished
        if @players.key?(player_name)
          @players[player_name] += food
        else
          puts 'No se encontrol jugador'
        end
      else
        puts 'Throws Exception'
      end
    end
  
    def print_score
      puts @players.inspect
    end
  
    def finish_game
      @has_finished = true
      max_points = @players.values.max
      winner = @players.key(max_points)
      puts @players.inspect
      puts "The winner is \"#{winner}\""
    end
  end
