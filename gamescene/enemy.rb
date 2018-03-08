class Enemy
  def initialize(x, y, image_file)
    p ("enemy.rb-initialize/3")
    @x, @y = x, y
    @image = Image.load(image_file)
    @image.set_color_key(C_WHITE)
    @dy = 1
  end

  def move
    p ("enemy.rb-move/10")
    @y += @dy
    $goal_flg = 1 if @y > 550
  end

  def draw
    p ("enemy.rb-draw/16")
    Window.draw(@x, @y, @image)
  end
end
