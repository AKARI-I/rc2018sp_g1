class Enemy_elephant < Enemy
  def initialize(x, y=0)
    p ("enemy_elephant.rb-initialize/3")
    super(x, y, "images_0/elephant_2.png")
    @dy = 1
    @hp = 10
  end
end
