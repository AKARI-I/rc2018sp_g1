require_relative 'player'
require_relative 'director'
# require_relative 'enemy'
# require 'smalrubot'

## merge ##
require_relative 'food'
## end ##

# require_relative 'showTimePoint'

module Game
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
            
            ## Enemy ##
            @enemy = EnemyDirector::Director.new
            ## end ##

            ## food ##
            # @food = Food.new(7)
            ## end ##

            ## showTimePoint ##
            # @showTimePoint = TimePoint.new(0.5)
            ## end ##
        end

        def play(score)
            ## food ##
            # @food.draw_food
            ## end ##



            ## Enemy ##
            score = @enemy.play
            ## end ##
            
            @player.draw_player
            @player.draw_ball

            ## showTimePoint ##
            # @showTimePoint.draw_time_point
            ## end ##

            if @frm == 30
                @dx = @board.digital_read(4) 
                @button = @board.digital_read(3)
                puts "katamuki: #{@dx}"
                puts "button: #{@button}"
                # @showTimePoint.add_point(4)
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

            ## to check ball_xy ##
            ball_xy = @player.ball_xy
            p ball_xy
            ## end ##

            # if @score > 100
            #     Scene.move_to(:happy_ending)
                # エンディングに切り替わる
            # else
            #     Scene.move_to(:bad_endding)
            # end

            return score
        end
    end
end