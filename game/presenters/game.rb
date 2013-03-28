module Presenters
  class Game < Base
    def initialize
      @game = Entities::Game.new
      @players = { :left => build_player(:left),
                   :right => build_player(:right) }
      @ball = Presenters::Ball.new
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

    private
    def build_player(side)
      Presenters::Player.new(@game.players[side], side)
    end
  end
end
