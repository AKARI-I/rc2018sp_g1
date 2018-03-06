class Director
  def initialize
<<<<<<< HEAD
    #@enemy_x = [""]
    @enemy1 = Enemy1.new(50, 0, "images/enemy.png")
    @enemy2 = Enemy2.new(150, 0, "images/enemy2.png")
    @enemy3 = Enemy3.new(250, 0, "images/enemy3.png")
    @enemy4 = Enemy4.new(350, 0, "images/enemy4.png")
    @enemy5 = Enemy5.new(450, 0, "images/enemy5.png")
=======
    
    @char1 = Enemy.new(rand(100), rand(400)+100, "images/enemy.png")
    @char2 = Enemy.new(rand(200), rand(300)+200, "images/enemy2.png")
    @char3 = Enemy.new(rand(300), rand(200)+300, "images/enemy3.png")
>>>>>>> b496ad44aa1cecf316d6e8155ed647148782e67b
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
