module Presenters
  class Base
    def render(container, graphics)
      raise "Please implement this method in your subclass."
    end
  end

  autoload :Game, "game/presenters/game"
  autoload :Player, "game/presenters/player"
  autoload :Ball, "game/presenters/ball"
end
