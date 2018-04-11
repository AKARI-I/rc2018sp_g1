class Enemy_snake < Enemy
  def initialize(x, y=0)
    p ("enemy_snake.rb-initialize/3")
    super(x, y, "images_0/snake_2.png")
    @dy = 1
    @hp = 10
  end
end
