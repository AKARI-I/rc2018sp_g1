require 'dxruby'
require 'smalrubot'
require_relative 'scene'
require_relative 'gamescene\director'
require_relative 'scenetitle\title'
require_relative 'manualscene\manual'
require_relative 'endingscene\director'

Window.width = 600
Window.height = 700

board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

# Scene.add(Game::Director.new(board), :game)
# Scene.move_to(:game)

# director = Director.new

Scene.add(Title::Director.new(board), :title)
Scene.add(Manual::Director.new(board), :manual)
#Scene.add(Game::Director.new(board), :game)
Scene.add(EnemyDirector::Director.new, :game)
Scene.add(NomalEnding::Director.new, :nomalEnding)
# Scene = Game::Director.new(board)
Scene.move_to(:title)

score = 0

Window.loop do
  break if Input.key_push?(K_ESCAPE)
  # ゲームを終了させる
  score = Scene.play(score)
  puts "score: #{score}"
end
