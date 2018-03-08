class Enemy_crocodile < Enemy
  def initialize(x, y=0)
    p ("enemy_crocodile.rb-initialize/3")
    super(x, y, "images_0/crocodile_2.png")
    @dy = 1
    @hp = 10
  end
end
