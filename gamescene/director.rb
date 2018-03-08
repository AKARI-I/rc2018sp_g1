require_relative 'enemy'

module EnemyDirector
  class Director
    def initialize
      $goal_flg = 0 #グローバル変数

      rand_x = [25, 125, 225, 325, 425, 525]  #6レーン

      @enemy_monkey    = Enemy.new(rand_x[rand(6)], 0, "images/monky_2.png")
      @enemy_snake     = Enemy.new(rand_x[rand(6)], 0, "images/snake_2.png")
      @enemy_elephant  = Enemy.new(rand_x[rand(6)], 0, "images/elephant_2.png")
      @enemy_crocodile = Enemy.new(rand_x[rand(6)], 0, "images/crocodile_2.png")
      @enemy_gorilla   = Enemy.new(rand_x[rand(6)], 0, "images/gorilla_2.png")

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
    end
  end
end
