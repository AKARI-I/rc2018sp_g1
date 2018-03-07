class Director
  def initialize
    $goal_flg = 0 #グローバル変数
    #@enemy_positionX = [25, 125, 225, 325, 425, 525] #enemyのx座標(6レーン分)
    @enemy_monkey = Enemy.new(25, 0, "images/monkey.png")
    @char2 = Enemy.new(225, 0, "images/enemy2.png")
    @char3 = Enemy.new(425, 0, "images/enemy3.png")
    @bg_img = Image.load("images/background.png")
  end

  def play
    Window.draw(0, 0, @bg_img)
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
