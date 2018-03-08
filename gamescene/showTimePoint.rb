class TimePoint


    def initialize(time_limit_min, food_object)
      p ("showTimePoint.rb-initialize/5")
        @bg = Image.load('images/white.png')
        @font = Font.new(32, "ＭＳ　Pゴシック")
        # @time_limit = Time.now + time_limit_min_int * 60
        @frm_for_time = (time_limit_min * 60 * 60).to_i
        @score = 0
        @delay_ending_cnt = 0
        @playing_game = 1
        @food = food_object
    end

    def draw_time_point
      p ("showTimePoint-draw_time_point/17")
        Window.draw(0, 0, @bg)
        draw_time
        draw_point
        return @score
    end

    def draw_time
      p ("showTimePoint-draw_time/25")
        if @frm_for_time < 1 or @food.food_fig < 1
            @playing_game = 0
			@delay_ending_cnt += 1
			@frm_for_time = 0
			if @delay_ending_cnt > 120
				Scene.move_to(:nomalEnding)
            end
        elsif @playing_game > 0
            @frm_for_time -= 1
        end
        showMin = @frm_for_time / 3600
        showSec = @frm_for_time / 60 - showMin * 60
        Window.draw_font(20, 0, "#{showMin}:#{format("%02d",showSec)}", @font, :color => [0,0,0])
    end

    def draw_point
      p ("showTimePoint-draw_point/42")
        Window.draw_font(0, 36, "Your Score: #{format("%4d",@score)}", @font, :color => [0,0,0])
    end

    def add_point(score)
      p ("showTimePoint-add_point/47")
        if @playing_game > 0
            @score += score
        end
    end


end
