module Presenters
  class Game < Base
    PLAYER_MAP = {
      :cpu => Presenters::Player,
      :human => Presenters::HumanPlayer
    }

    def initialize
      @game = Entities::Game.new
      @players = { :left => build_player(:left, :cpu),
                   :right => build_player(:right, :human) }
      @ball = Presenters::Ball.new(@game)
    end

    def render(container, graphics)
      graphics.drawLine(container.width / 2, 0, container.width / 2, container.height)
      graphics.draw_string(@game.scores[:left].to_s, container.width / 2 - 30, 30)
      graphics.draw_string(@game.scores[:right].to_s, container.width / 2 + 30, 30)

      @players.values.each do |player|
        player.render(container, graphics)
      end
      @ball.render(container, graphics)
    end

    def update(container, delta)
      @players.values.each do |player|
        player.update(container, delta)
      end
    end

    private
    def build_player(side, type)
      PLAYER_MAP[type].new(@game.players[side], side)
    end
  end
end
