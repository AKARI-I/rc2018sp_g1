require_relative 'player'
# require 'smalrubot'

class Director
    def initialize(board)
        haba = 100
        @player = Player.new(haba)
        @board = board 
        # @board = Smalrubot::Board.new(Smalrubot::TxRx::Serial.new)
        # 上記の書き方だと、2回"board"が初期化されてしまう
        # @board = board
        @frm = 1
        @dx = 0
        @button = 0
    end

    def play
        @player.draw_player
        @player.draw_ball
        if @frm == 30
            @dx = @board.digital_read(4) 
            @button = @board.digital_read(3)
            p "katamuki:", @dx
            p "button:", @button
        end
        @frm += 1
        @frm = 1 if @frm > 30

        if @dx > 0
            @player.plus_player
        else
            @player.minus_player
        end

        if @button > 0
            @player.push_button = 1
        elsif
            @player.push_button = 0
        end



        # if @score > 100
        #     Scene.move_to(:happy_ending)
            # エンディングに切り替わる
        # else
        #     Scene.move_to(:bad_endding)
        # end
    end
end
