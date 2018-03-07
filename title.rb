
require 'dxruby'

Window.width = 800
Window.height = 600


module Title
    class Director
board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)
        def initialize
            @font = Font.new(32, "ＭＳ　Pゴシック")
        end

        def play
            Window.draw_font(250, 280, "タイトル画面", @font)
            
            @bc = @board.degital_read(3) if @frm == 30
            @frm += 1
            @frm=0 if @frm >30
            
            Scene.move_to(:game) if @bc == 1
            # シーンを変える
        end
    end
end

