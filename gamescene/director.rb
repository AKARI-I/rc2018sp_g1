require_relative 'enemy'

module EnemyDirector
  class Director
    def initialize
      $goal_flg = 0 #グローバル変数
      #@enemy_positionX = [25, 125, 225, 325, 425, 525] #enemyのx座標(6レーン分)

      ## change images ##

      # @enemy_monkey = Enemy.new(25, 0, "images/monkey.png")
      # @char2 = Enemy.new(225, 0, "images/enemy2.png")
      # @char3 = Enemy.new(425, 0, "images/enemy3.png")


      @enemy_monkey = Enemy.new(25, 0, "images/monky_2.png")
      @char2 = Enemy.new(225, 0, "images/elephant_2.png")
      @char3 = Enemy.new(425, 0, "images/crocodile_2.png")

      ## end ##
      @bg_img = Image.load("images/background.png")
    end

    def play
      ## change for debug ##
      # Window.draw(0, 0, @bg_img)
      ## end ##
      Window.decide #背景の描画予約

      if $goal_flg == 0 then
        @enemy_monkey.move
        @char2.move
        @char3.move

        @enemy_monkey.draw
        @char2.draw
        @char3.draw
      end
    end
  end
end
