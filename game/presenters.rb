module Presenters
  class Base
    def render(container, graphics); end

    def update(container, delta); end
  end

  autoload :Game, "game/presenters/game"
  autoload :Player, "game/presenters/player"
  autoload :HumanPlayer, "game/presenters/human_player"
  autoload :Ball, "game/presenters/ball"
end
