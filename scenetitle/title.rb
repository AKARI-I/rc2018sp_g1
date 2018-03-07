module Title
    class Director
#board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)
        def initialize(board)
        	@board = board
            @font = Font.new(32, "ＭＳ　Pゴシック")
            @frm = 0
        end

        def play
            Window.draw_font(250, 280, "タイトル画面", @font)
            
            @bc = @board.digital_read(3) if @frm == 30
            @frm += 1
            @frm=0 if @frm >30
            
            Scene.move_to(:game) if @bc == 1
            # シーンを変える
        end
    end
end

