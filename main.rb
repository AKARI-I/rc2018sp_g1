require 'dxruby'
require 'smalrubot'
require_relative 'director'
require_relative 'enemy'
require_relative 'gamescene\gamescene'


Window.width = 600
Window.height = 700

board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

# Scene.add(Game::Director.new(board), :game)
# Scene.move_to(:game)

director = Director.new
Scene = Director.new(board)

Window.loop do
  break if Input.key_push?(K_ESCAPE)
  # ゲームを終了させる
  Scene.play
  director.play
end
