module Presenters
  class Player < Base
    def initialize(player, side, ball)
      @player = player
      @ball = ball
      @side = side
      @running = false
    end

    def render(container, graphics)
      @rectangle = build_rectangle(container) unless @running
      detect_collision(container)

      graphics.fill(@rectangle)
    end

    private
    def build_rectangle(container)
      @running = true
      Rectangle.new(get_x_offset(container), container.height / 2, 10, 100)
    end

    def get_x_offset(container)
      if @side == :left
        30
      else
        container.width - 30
      end
    end

    def detect_collision(container)
      return unless @ball.ball
      @ball.velocity.x = @ball.velocity.x * -1 if @ball.ball.intersects(@rectangle)
    end
  end
end
