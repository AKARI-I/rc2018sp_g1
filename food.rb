require 'dxruby'

#class Food
	#@banana
	#def damage
		#@banana -= 1
	#end
#end

bg = Image.load('background5.jpg', nil, nil, 600, 700)
banana = Image.load('fruit_banana2_2.png')


Window.width = 600
Window.height = 700

Window.loop do
	Window.draw(  0,   0, bg)
	Window.draw(  0, 625, banana)
	Window.draw(100, 625, banana)
	Window.draw(200, 625, banana)
	Window.draw(300, 625, banana)
	Window.draw(400, 625, banana)
end


#fd = Food.new
