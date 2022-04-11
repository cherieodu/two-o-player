class Game_Calc
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
    end
    
    def randomizer
        num1 =  ((rand() * 19) + 1).to_i
        num2 = ((rand() * 19) + 1).to_i
        result = num1 + num2
        
        return [num1, num2, result]
    end
    
    def run
        
        count = 1
        
        while (@player1.get_lives != 0) && (@player2.get_lives != 0)
            if count == 1
                player = @player1
                player_name = "Player 1"
            else
                player = @player2
                player_name = "Player 2"
            end
        
            
            answers = randomizer
            result = answers.at(2)
            
            puts "#{player_name}: What does #{answers.at(0)} plus #{answers.at(1)} equal?"
            response = Integer(gets.chomp)
    
            if response == result
                puts "You're right!"
            else
                puts "Nooooo!!!"
                player.lost
            end
            
            puts "P1: #{@player1.get_lives}/3 vs P2: #{@player2.get_lives}/3"
            
            if (@player1.get_lives != 0) && (@player2.get_lives != 0)
                if count == 1
                    count = 2
                else
                    count = 1
                end
                puts "----- NEW TURN -----"
            end
        end   
    end
    
    def results
        if @player1.get_lives > @player2.get_lives
            puts "Player 1 wins with a score of #{@player1.get_lives}/3"
        else
            puts "Player 2 wins with a score of #{@player2.get_lives}/3"
        end
        
        puts "----- GAME OVER -----"
        puts "Good bye!"
    end
end