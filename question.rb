require "./random_num.rb"

class Question
    

    include Random_num 

    def self.ask_question()
        num2 = Random_num.generate()
        num1 = Random_num.generate()
        
        return ["what is #{num1} plus #{num2}?", num1 + num2]
    end
end