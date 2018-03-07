require 'dxruby'

bg = Image.load('background5.jpg', nil, nil, 600, 700)
banana = Image.load('fluit_banana2.png')

Window.width = 600
Window.height = 700

Window.loop do
  	Window.draw(0, 0, bg)
	Window.draw(0, 460, banana)
	Window.draw(100, 460, banana)
	Window.draw(200, 460, banana)
	Window.draw(300, 460, banana)
	Window.draw(400, 460, banana)
	break if Input.key_push?(K_ESCAPE)
end