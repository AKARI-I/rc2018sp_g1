class Enemy
  def initialize(x, y, image_file)

    ## merge ##
    # @x, @y = x, y
    # @image = Image.load(image_file)
    # # @image.set_color_key([0, 0, 0])
    # @image.set_color_key(C_WHITE)
    # @dy = 3
    ## end ##
    @x, @y = x, y                   #敵の座標
    @image = Image.load(image_file) #敵画像
    #@image.set_color_key([0, 0, 0])
    @dy = 1                         #速さ

    @image.set_color_key(C_WHITE)
  end

  def move
    @y += @dy
    $goal_flg = 1 if @y > 550 || @y < 0
  end

  def draw
    Window.draw(@x, @y, @image)
  end
end
