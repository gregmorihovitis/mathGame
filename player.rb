#No requires needed
class Player
    attr_reader :name
    attr_accessor :lives

    def initialize(name)
        @name = name
        @lives = 3
    end
   
    def has_lost?
      self.lives == 0  
    end

end