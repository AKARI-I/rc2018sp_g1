module Title
    class Director
#board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)
        def initialize(board)
        	@board = board
        	@font_t = Font.new(60, "ＭＳ ゴシック", :weight => true)
            @font = Font.new(40, "ＭＳ ゴシック")
            @frm = 0
            @t_bg = Image.load('title_background5.jpg')
        end

        def play
        	Window.draw(0, 0, @t_bg )
            Window.draw_font_ex(100, 280, "バナナを守れ！", @font_t, {:edge_color => [255,255,0], :edge => true, :edge_width => 10, :edge_level => 9})
            Window.draw_font(55, 400, "Please press the button!!", @font)
            
            @bc = @board.digital_read(3) if @frm == 30
            @frm += 1
            @frm=0 if @frm >30
            
            Scene.move_to(:game) if @bc == 1
            # シーンを変える
        end
    end
end

