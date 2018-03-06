require 'dxruby'

Window.caption = "RubyCamp2018"

Window.width = 600
Window.height = 800

bg_img = Image.load("images/background.png")

Window.loop do
	Window.draw(0, 0, bg_img)
end
