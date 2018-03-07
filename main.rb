require 'dxruby'
require 'smalrubot'
# require_relative 'player'
#require_relative 'scene'
# require_relative 'scene_game\director'
# require_relative 'scene_title\director'
require_relative 'scenetitle\title'


Window.width = 600
Window.height = 700

board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

# Scene.add(Title::Director.new, :title)
# Scene.add(Game1::Director.new(board), :game1)
# Scene.add(Game2::Director.new(board), :game2)

# Scene.move_to(:title)

Scene = Title::Director.new(board)

Window.loop do
  break if Input.key_push?(K_ESCAPE)
  # ゲームを終了させる
  Scene.play
end