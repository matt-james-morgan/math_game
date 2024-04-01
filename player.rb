class Player
    attr_accessor :name, :lives, :alive
    def initialize(name)
        @name = name
        @lives = 3
        @alive = true
    end
    def lose_life
        @lives -= 1
        if(@lives < 1)
            @alive = false
        end
    end
end

