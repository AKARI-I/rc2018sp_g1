class Director
  def initialize

    #@enemy_x = [""]
    @enemy1 = Enemy1.new(50, 0, "images/enemy.png")
    @enemy2 = Enemy2.new(150, 0, "images/enemy2.png")
    @enemy3 = Enemy3.new(250, 0, "images/enemy3.png")
    @enemy4 = Enemy4.new(350, 0, "images/enemy4.png")
    @enemy5 = Enemy5.new(450, 0, "images/enemy5.png")
    @bg_img = Image.load("images/background.png")
  end

  def play
    Window.draw(0, 0, @bg_img)
    @enemy1.move
    @enemy2.move
    @enemy3.move
    @enemy4.move
    @enemy5.move
    @enemy1.draw
    @enemy2.draw
    @enemy3.draw
    @enemy4.draw
    @enemy5.draw
  end
end
