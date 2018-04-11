class Enemy_gorilla < Enemy
  def initialize(x, y=0)
    p ("enemy_gorilla.rb-initialize/3")
    super(x, y, "images_0/gorilla_2.png")
    @dy = 1
    @hp = 10
  end
end
