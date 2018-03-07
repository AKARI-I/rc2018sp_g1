module NomalEnding
    class Director
        # attr_accessor :pnt

        def initialize
            @font = Font.new(32, "ＭＳ　Pゴシック")
            @image = Image.load('images/test_bg.jpg')
            @pnt = 0
        end

        def play
            @pnt = 540
            Window.draw(0, 0, @image)

            Window.draw_font(100, 280, "Successfully Completed", @font)
            Window.draw_font(200, 400, "Your Score: #{format("%4d", @pnt)}", @font)
        end
    end
end