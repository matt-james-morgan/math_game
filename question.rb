require "./random_num.rb"

class Question
    attr_accessor :num1, :num2

    include Random_num 

    def initialize(num1, num2)

    end
end