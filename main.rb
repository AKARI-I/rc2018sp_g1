require 'dxruby'

require_relative 'director'
require_relative 'enemy'
require_relative 'enemy1'
require_relative 'enemy2'
require_relative 'enemy3'

Window.caption = "RubyCamp2018"
Window.width   = 600
Window.height  = 800

director = Director.new

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  director.play
end
