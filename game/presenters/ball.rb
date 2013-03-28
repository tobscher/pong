module Presenters
  class Ball < Base
    attr_reader :ball, :velocity

    def initialize(game)
      @game = game
      @running = false
      @velocity = Vector2f.new(-3, 1)
    end

    def render(container, graphics)
      if @running
        update_location(container)
      else
        @ball = build_centered_ball(container)
      end
      graphics.fill(@ball)
    end

    private
    def build_centered_ball(container)
      @running = true
      @ball = Circle.new(container.width / 2, container.height / 2, 6)
    end

    def update_location(container)
      @ball.set_location(@ball.getX + @velocity.getX, @ball.getY + @velocity.getY)
      detect_collision(container)
    end

    def detect_collision(container)
      if @ball.minX <= 0
        @velocity.x = @velocity.x * -1
        @game.score(:left)
      end

      if @ball.maxX >= container.width
        @velocity.x = @velocity.x * -1
        @game.score(:right)
      end

      @velocity.y = @velocity.y * -1 if @ball.minY <= 0
      @velocity.y = @velocity.y * -1 if @ball.maxY >= container.height
    end
  end
end
