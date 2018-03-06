require 'dxruby'

require_relative 'director'
require_relative 'player'

Window.caption = "RubyCamp2018"
Window.width   = 600
Window.height  = 800

director = Director.new

Window.loop do
  break if Input.keyPush?(K_ESCAPE)

  director.play
end
