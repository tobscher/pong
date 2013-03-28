module Presenters
  class HumanPlayer < Player
    def update(container, graphics)
      input = container.get_input
      if input.is_key_down(Input::KEY_UP)
        @rectangle.y -= 10.0 if @rectangle.minY >= 0
      elsif input.is_key_down(Input::KEY_DOWN)
        @rectangle.y += 10.0 if @rectangle.maxY < container.height
      end
    end
  end
end
