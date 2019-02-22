#No requires needed
#generates question and answer
class Question

    attr_reader :question

    def initialize
        @answer = 0
        @question = ""
    end

    def gen_question
        x = rand(50) + 1
        y = rand(50) + 1

        @answer = x + y
        @question = "What's #{x} + #{y}?"
    end

    def correct?(user_answer)
        user_answer.to_i == @answer
    end
end