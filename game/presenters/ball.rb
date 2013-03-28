module Presenters
  class Ball < Base
    def render(container, graphics)
      graphics.fill_oval(70, 100, 10, 10)
    end
  end
end
