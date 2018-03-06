require 'dxruby'

bg = Image.load('2d-game-backgrounds-470x300.jpg')
banana = Image.load('fruit_banana2.png')


Window.width = 800
Window.height = 600




Window.loop do
	@banana = banana
	Window.draw(0, 0, bg)
	Window.draw(0, 500, @banana)
	Window.draw(100, 500, @banana)
	Window.draw(200, 500, @banana)
	Window.draw(300, 500, @banana)
	Window.draw(400, 500, @banana)
	break if Input.key_push?(K_ESCAPE)
    
end