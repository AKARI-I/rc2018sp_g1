# require 'dxruby'

#class Food
	#@banana
	#def damage
		#@banana -= 1
	#end
#end
class Food
	def initialize
		@bg = Image.load('images/game_background.jpg', nil, nil, 600, 700)
		@banana = Image.load('images/banana.png')
		@banana.set_color_key(C_WHITE)
	end

	def draw_food
		
		# Window.width = 600
		# Window.height = 700
		xy_list = make_x(7)

		Window.draw(  0,   0, @bg)
		xy_list.each do |xy|
			Window.draw(xy[0], xy[1], @banana)
		end
		
		# Window.draw(  0, 625, @banana)
=begin
		Window.loop do
			Window.draw(  0,   0, @bg)
			Window.draw(  0, 625, @banana)
			Window.draw(100, 625, @banana)
			Window.draw(200, 625, @banana)
			Window.draw(300, 625, @banana)
			Window.draw(400, 625, @banana)
		end
=end
	end

	def make_x(fig)
		xy = []
		for i in 0..(fig - 1)
			x = 300.0 / fig + 600.0 * i / fig - 50.0/2.0
			xy << [x, 625]
		end
		# p xy
		return xy
	end


end

#fd = Food.new
