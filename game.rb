require "./question"

class Game
    attr_accessor :current_player
    def initialize(player1, player2)
        @player1 = player1
        @player2 = player2
        @current_player = player1
    end
    def display_lives
        puts "LIVES LEFT: #{@player1.name} #{@player1.lives}/3  vs #{@player2.name} #{@player2.lives}/3"
    end
    def play()
        
        puts "P1, Enter Name:"

        @player1.name = gets.chomp

        puts "P2, Enter Name:"

        @player2.name = gets.chomp

       while @player1.alive && @player2.alive

            

            puts "------NEW TURN--------"
        

            question, answer = Question.ask_question()
        
            puts  "#{@current_player.name}, " + question
        
             user_response = gets.chomp.to_i
       
             puts "You are #{user_response === answer ?  "correct!": "totally wrong"}"

            user_response === answer ? nil : @current_player.lose_life()  

            display_lives

            if !@player1.alive
                puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
                break
              elsif !@player2.alive
                puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
                break
              end

            @current_player = (@current_player == @player1) ? @player2 : @player1  
             
             
        end
    end


    
end
