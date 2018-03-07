# require_relative 'level'
require 'dxruby'

# buki = Level.buki


class Player
    attr_accessor :x
    attr_accessor :push_button # push 1
  
    def initialize(haba)
        # @board = board
        @image_player = Image.load('./gamescene/a.png')
        @image_ball = Image.load('./gamescene/b.png')
        @image_player.set_color_key(C_BLACK)
        @image_ball.set_color_key(C_BLACK)

        @haba = haba
        @rail_max = 500
        @rail_min = 0
  
        @x = 0
        @y = 600

        @dx = 0
        
        @frm = 1
        @push_button = 0
        @show_ball = 0
        @x_ball = 0
        @y_ball = 0
    end
  
    def draw_player
        Window.draw(@x, @y, @image_player)
        frm_kankaku = 30
        @frm += 1
        @x += @dx if @frm == frm_kankaku
        @frm = 0 if @frm > frm_kankaku

        @dx = 0
        # @x += Input.x
        # @y += Input.y
    end

    def plus_player
        if @x < @rail_max
            @dx += @haba
        end
    end

    def minus_player
        if @x > @rail_min
            @dx -= @haba
        end
    end

    def draw_ball
        if @push_button > 0
            @show_ball = 1
            @y_ball = @y
            @x_ball = @x
            @push_button = 0
        end
        

        if @show_ball > 0
            for i in (0..9)
                Window.draw(@x_ball[i], @y_ball[i], @image_ball)
            end
            @y_ball -= 5
            if @y_ball < 0
                @show_ball = 0
            end
        end
    end  

end 