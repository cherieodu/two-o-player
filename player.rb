class Player
    
    def initialize(player)
        @player = player
        @lives = 3
    end
    
    def lost
        @lives -= 1
        puts @lives
    end
    
    def get_lives
        return @lives
    end
end