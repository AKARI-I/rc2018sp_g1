require 'dxruby'

require_relative 'director'
require_relative 'enemy'

Window.caption = "RubyCamp2018"
Window.width   = 600
Window.height  = 700

director = Director.new

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  director.play
end
