require_relative 'enemy'
require_relative 'enemy_monkey'
require_relative 'showTimePoint'

module EnemyDirector
  class Director
    def initialize
      $goal_flg = 0 #グローバル変数

      ## to show and reduce food ##
      @food = Food.new(7)
      ## end ##

      ## to show time and point and add point ##
      @showTimePoint = TimePoint.new(0.5, @food)
      ## end ##

      rand_x = [25, 125, 225, 325, 425, 525]  #6レーン

      @enemy_monkey    = Enemy_monkey.new(rand_x[rand(6)])
      @enemy_snake     = Enemy.new(rand_x[rand(6)], "images_0/snake_2.png")
      @enemy_elephant  = Enemy.new(rand_x[rand(6)], "images_0/elephant_2.png")
      @enemy_crocodile = Enemy.new(rand_x[rand(6)], "images_0/crocodile_2.png")
      @enemy_gorilla   = Enemy.new(rand_x[rand(6)], "images_0/gorilla_2.png")

      ## end ##
      @bg_img = Image.load("images/game_background.jpg")

      ## test @food.reduce_food ##
      @tmp = 0
      ## end ##
    end

    def play
      ## change for debug ##
      # Window.draw(0, 0, @bg_img)
      ## end ##
      Window.decide #背景の描画予約


      ## show
      @food.draw_food
      ## end ##

      ## test @food.reduce_food ##
      if @tmp > 120
        @food.reduce_food
        @tmp = 0
      elsif
        @tmp += 1
      end
      ## end ##

      ## show time and point ##
      @showTimePoint.add_point(5) # <- test
      score = @showTimePoint.draw_time_point
      # p "score",score
      ## end ##


      if $goal_flg == 0 then
        @enemy_monkey.move
        @enemy_snake.move
        @enemy_elephant.move
        @enemy_crocodile.move
        @enemy_gorilla.move

        @enemy_monkey.draw
        @enemy_snake.draw
        @enemy_elephant.draw
        @enemy_crocodile.draw
        @enemy_gorilla.draw
      end

      return score
    end
  end
end
