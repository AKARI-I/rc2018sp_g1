class Enemy
  def initialize(x, y, image_file)
    @x, @y = x, y
    @image = Image.load(image_file)
    @image.set_color_key([0, 0, 0])
    @dy = 3
  end

  def move
    @y += @dy
    $goal_flg = 1 if @y > 550 || @y < 0
  end

  def draw
    Window.draw(@x, @y, @image)
  end
end
