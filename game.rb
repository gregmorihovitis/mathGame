require_relative './player'
require_relative './question'

class Game
    def initialize
        @player1 = Player.new('Player1')
        @player2 = Player.new('Player2')
        @current_player = @player1
        @current_question = Question.new
        @current_turn = 1
    end

    def switch_player
        @current_player = @current_player == @player1 ? @player2 : @player1
    end

    def game_over
        puts "#{@current_player.name} wins with #{@current_player.lives_remaining} \n ======Game Over======"
    end

    def play
        puts "====Welcome===="
        while (not @player1.has_lost?) && (not @player2.has_lost?) do
            puts "====Turn #{@current_turn}===="

            @current_question.gen_question
            
            puts "#{@current_player.name}, #{@current_question.question}"

            user_answer = gets.chomp

            @current_question.correct?(user_answer) ? @current_player.correct : @current_player.incorrect

            puts "#{@current_player.name} has #{@current_player.lives_remaining} \n\n"
            switch_player
            @current_turn += 1

            sleep 0.5
        end
    
        game_over
    end
end