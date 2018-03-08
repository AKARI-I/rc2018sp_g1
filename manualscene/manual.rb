module Manual
    class Director
    #board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)
        def initialize(board)
          p ("manual.rb-initialize/5")
        	@board = board
        	@font_t = Font.new(60, "ＭＳ ゴシック", :weight => true)
            @font = Font.new(40, "ＭＳ ゴシック")
            @frm = 0
            @t_bg = Image.load('images/title_background.jpg')
            @delay_change_cnt = 1
        end

        def play(score)
          p ("manual.rb-play/15")
        	Window.draw(0, 0, @t_bg )
            Window.draw_font_ex(100, 280, "取説", @font_t, {:edge_color => [255,255,0], :edge => true, :edge_width => 10, :edge_level => 9})
            Window.draw_font(55, 400, "Please press the button!!", @font)

            # @bc = @board.digital_read(3) if @frm == 30
            # if @frm == 12
            if @frm == 12 and @delay_change_cnt == 0
                @bc = @board.digital_read(3)
                puts "button: #{@bc}"
            end

            if @delay_change_cnt > 180
                @delay_change_cnt = 0
            elsif @delay_change_cnt > 0
                @delay_change_cnt += 1
            end

            @frm += 1
            @frm=0 if @frm >30

            Scene.move_to(:game) if @bc == 1
            # シーンを変える

            return 0
        end
    end
end
