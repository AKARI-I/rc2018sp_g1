require 'dxruby'
require 'smalrubot'
require_relative 'scene'
require_relative 'gamescene\gamescene'
require_relative 'scenetitle\title'


Window.width = 600
Window.height = 700

board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

# Scene.add(Game::Director.new(board), :game)
# Scene.move_to(:game)

# director = Director.new

Scene.add(Title::Director.new(board), :title)
Scene.add(Game::Director.new(board), :game)
# Scene = Game::Director.new(board)
Scene.move_to(:title)

Window.loop do
  break if Input.key_push?(K_ESCAPE)
  # ゲームを終了させる
  Scene.play
  # director.play
end
