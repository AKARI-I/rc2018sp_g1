class Director
  def initialize
    @char1 = Enemy.new(rand(100), rand(400)+100, "images/enemy.png")
    @char2 = Enemy.new(rand(200), rand(300)+200, "images/enemy2.png")
    @char3 = Enemy.new(rand(300), rand(200)+300, "images/enemy3.png")
    @bg_img = Image.load("images/background.png")
  end

  def play
    Window.draw(0, 0, @bg_img)
    @char1.move
    @char2.move
    @char3.move
    @char1.draw
    @char2.draw
    @char3.draw
  end
end
