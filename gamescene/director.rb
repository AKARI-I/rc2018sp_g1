require_relative 'enemy'
require_relative 'showTimePoint'

module EnemyDirector
  class Director
    def initialize
      $goal_flg = 0 #グローバル変数
      #@enemy_positionX = [25, 125, 225, 325, 425, 525] #enemyのx座標(6レーン分)

      ## to show time and point and add point ##
      @showTimePoint = TimePoint.new(0.5)
      ## end ##

      ## to show and reduce food ##
      @food = Food.new(7)
      ## end ##

      ## change images ##

      # @enemy_monkey = Enemy.new(25, 0, "images/monkey.png")
      # @char2 = Enemy.new(225, 0, "images/enemy2.png")
      # @char3 = Enemy.new(425, 0, "images/enemy3.png")

      
      @enemy_monkey = Enemy.new(25, 0, "images/monky_enemy.png")
      @char2 = Enemy.new(225, 0, "images/elephant_enemy.png")
      @char3 = Enemy.new(425, 0, "images/crocodile_enemy.png")

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
        @char2.move
        @char3.move

        @enemy_monkey.draw
        @char2.draw
        @char3.draw
      end

      return score
    end
  end
end