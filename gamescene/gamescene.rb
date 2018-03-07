require_relative 'food'

module Game
    class Director
        def initialize(board)
        # def initialize
            @food = Food.new()

        end

        def play
            @food.draw_food
        end

    end
end