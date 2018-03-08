# require_relative 'level'
require 'dxruby'

# buki = Level.buki


class Player
    attr_accessor :x
    attr_accessor :push_button # push 1
    attr_accessor :ball_xy

    def initialize(haba)
      p ("player.rb-initialize/13")
        # @board = board

        ## change images ##
        # @image_player = Image.load('./gamescene/a.png')
        # @image_ball = Image.load('./gamescene/b.png')

        # @image_player = Image.load('images/player_woman.png') # <-　著作権上 △
        @image_player = Image.load('images/player_man.png')

        # @image_ball = Image.load('images/ball_weapon.png')
        ## end ##


        # 木, 石, パチンコ, 弓, 銃

        ## change images ##
        # @image_player.set_color_key(C_BLACK)
        # @image_ball.set_color_key(C_BLACK)

        @image_player.set_color_key(C_WHITE)
        # @image_ball.set_color_key(C_WHITE)
        ## end ##

        ## image_ball: more than one
        @ball_level = 0
        @image_balls = []

        @image_balls << Image.load('images/wood_weapon.png')
        @image_balls << Image.load('images/stone_weapon.png')
        @image_balls << Image.load('images/ball_weapon.png')
        @image_balls << Image.load('images/srrow_weapon.png')
        @image_balls << Image.load('images/bullet_weapon.png')

        @image_balls.each do |image_ball|
            image_ball.set_color_key(C_WHITE)
        end
        ## end

        @haba = haba
        @rail_max = 525
        @rail_min = 25

        @x = 25
        @y = 600 - 50

        @dx = 0

        @frm = 1
        @push_button = 0
        @show_ball = 0

        @ball_xy = []
        max_ball = 30
        for i in 0..max_ball do
            @ball_xy << [1000, 1000]
        end
        @add_ball = 0
        @button_cnt = 0
    end

    def draw_player
      p ("player.rb-draw_player/75")
        Window.draw(@x, @y, @image_player)
        frm_kankaku = 30
        @frm += 1
        @x += @dx if @frm == frm_kankaku
        @frm = 0 if @frm > frm_kankaku

        @dx = 0
    end

    def plus_player
      p ("player.rb-plus_player/86")
        if @x < @rail_max
            @dx += @haba
        end
    end

    def minus_player
      p ("player.rb-minus_player/93")
        if @x > @rail_min
            @dx -= @haba
        end
    end

    def draw_ball
      p ("player.rb-draw_ball/100")
        if @push_button < 1
            @button_cnt = 0
        elsif @button_cnt > 0 and @button_cnt < 12 and @push_button > 0
            @button_cnt += 1
            @add_ball = 0
        elsif @push_button > 0
            @add_ball = 1
            @button_cnt = 1
        end

        if @add_ball > 0
            @ball_xy.each do |xy|
                if xy[1] > 900
                    xy[0] = @x
                    xy[1] = @y
                    @add_ball = 0
                    break
                end
            end
        end

        @ball_xy.each do |xy|
            Window.draw(xy[0], xy[1], @image_balls[@ball_level])
            # p @ball_level
            if xy[1] > -5 and xy[1] < 900
                xy[1] -= 20
            elsif xy[1] < 0
                xy[1] = 1000
            end
        end
    end

    def upgrade_ball
      p ("player.rb-upgrade_ball/134")
        if @ball_level < 4
            @ball_level += 1
        end
    end
end
