module NomalEnding
    class Director
        # attr_accessor :pnt

        def initialize
            @font = Font.new(32, "ＭＳ Pゴシック")
            @font_e = Font.new(40, "ＭＳ Pゴシック")
            @image = Image.load('images/ending_background3.jpg')
            # @pnt = 0
        end

        def play(score)
            # @pnt = score
            Window.draw(0, 0, @image)

            Window.draw_font_ex(100, 280, "遊んでくれてありがとう！", @font, {:edge_color => [0,0,0], :edge => true, :edge_width => 10, :edge_level => 9})
            Window.draw_font_ex(150, 400, "あなたのスコア：", @font, {:edge_color => [0,0,0], :edge => true, :edge_width => 10, :edge_level => 9})
            Window.draw_font_ex(380, 400, "#{format("%4d", score)}", @font_e, {:edge_color => [255,0,0], :edge => true, :edge_width => 10, :edge_level => 9})

            return score
        end
    end
end