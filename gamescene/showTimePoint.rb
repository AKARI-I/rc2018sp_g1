class TimePoint


    def initialize(time_limit_min_int)
        @bg = Image.load('images/white.png')
        @font = Font.new(32, "ＭＳ　Pゴシック")
        # @time_limit = Time.now + time_limit_min_int * 60
        @frm_for_time = (time_limit_min_int * 60 * 60).to_i
        @score = 0
    end

    def draw_time_point
        Window.draw(0, 0, @bg)
        draw_time
        draw_point
    end

    def draw_time
        @frm_for_time -= 1
        if @frm_for_time < 0
            Scene.move_to(:nomalEnding)
        end
        showMin = @frm_for_time / 3600
        showSec = @frm_for_time / 60 - showMin * 60
        Window.draw_font(20, 0, "#{showMin}:#{format("%02d",showSec)}", @font, :color => [0,0,0])
    end

    def draw_point
        Window.draw_font(0, 36, "Your Score: #{format("%4d",@score)}", @font, :color => [0,0,0])
    end

    def add_point(score)
        @score += score
    end


end