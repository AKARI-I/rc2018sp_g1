require 'smalrubot'
require 'dxruby'

class Director
    def initialize(board)
        @board = board
        @frm = 1
        @dx = 0
    end

    def play
        @dx = @board.analog_read(0) if @frm == 30
        puts @dx
        @frm += 1
        @frm = 0 if @frm > 30
    end
end

Window.width = 800
Window.height = 600

board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)

player = Director.new(board)

Window.loop do
  break if Input.key_push?(K_ESCAPE)
  # ゲームを終了させる
  player.play
end