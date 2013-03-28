module Presenters
  class Player < Base
    def initialize(player, side)
      @player = player
      @side = side
      @running = false
    end

    def render(container, graphics)
      @rectangle = build_rectangle(container) unless @running

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
  end
end
