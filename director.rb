class Director
  def initialize
    @char = Player.new(0, 300, "images/enemy.png")
    @bg_img = Image.load("images/background.png")
  end

  def play
    Window.draw(0, 0, @bg_img)
    @char.move
    @char.draw
  end
end
