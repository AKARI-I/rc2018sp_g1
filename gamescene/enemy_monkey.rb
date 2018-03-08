class Enemy_monkey < Enemy
  def initialize(x, y=0)
    super(x, y, "images_0/monky_2.png")
    @dy = 1
    @hp = 10
  end
end
