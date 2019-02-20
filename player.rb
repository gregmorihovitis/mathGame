#No requires needed
class Player
    attr_reader :name
    attr_accessor :lives

    def initialize(name)
        @name = name
        @lives = 3
    end
   
    def correct
        puts "Correct!"
    end

    def incorrect
        puts "That's not right..."
        @lives -= 1
    end
    
    def lives_remaining
        "#{@lives} / 3 Lives Remaining"
    end

    def has_lost?
        @lives == 0  
    end


    
end