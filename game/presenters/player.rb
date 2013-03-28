module Presenters
  class Player < Base
    def initialize(player, side)
      @player = player
      @side = side
    end

    def render(container, graphics)
      # Draw rectancle
      graphics.fill_rect(get_x_offset(container), container.height / 2, 10, 100)
    end

    private
    def get_x_offset(container)
      if @side == :left
        30
      else
        container.width - 30
      end
    end
  end
end
