require_relative './player'
require_relative './turn_manager'

class Game
    def initialize
        @player1 = Player.new('Player1')
        @player2 = Player.new('Player2')
        @current_player = @player1
        @current_question = Question.new
        @current_turn = 1
    end

    def play
        puts "====Welcome===="
        while not @player1.has_lost? && not @player2.has_lost? do
            puts "====Turn#{@current_turn}===="
        end


    end


end