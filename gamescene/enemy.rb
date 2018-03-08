class Enemy

  attr_accessor :show_mode
  attr_accessor :show_status
  def initialize(x, y, image_file, food)
    @food = food
    # @x, @y = x, y
    @y = y
    @image = Image.load(image_file)
    # @image.set_color_key([0, 0, 0])
    @image.set_color_key(C_WHITE)
    @dy = 1.6
    @x = 1000
    @show_mode = 1
    @show_status = 1
  end

  def draw(x) 
    #show_mode -1: no, 0: move, 1: input
    # @show_status = 1
    if @y > 550 and @y < 900
      @food.reduce_food
      @show_mode = -1
    end
    if @show_mode > 0
      @y = 0
      @x = x
      # $goal_flg = 1 if @y > 550 || @y < 0
      # @show_mode = 
      Window.draw(@x, @y, @image)
      @show_status = 1
      # p "show_mode = 1"
    elsif @show_mode == 0
      # $goal_flg = 1 if @y > 550 || @y < 0
      @y += @dy

      Window.draw(@x, @y, @image)
      @show_status = 1
      # p "show_mode = 0"
    else
      @show_status = 0
      @x, @y = 1000, 1000
      # p "show_mode = -1"
    end
    return [@x, @y]
  end
end
