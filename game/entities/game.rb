module Entities
  class Game
    attr_reader :players, :scores, :presenter

    def initialize
      @players = { :left => build_player, :right => build_player }
      @scores = { :left => 0, :right => 0 }
    end

    def score(side)
      @scores[side] += 1
    end

    private
    def build_player
      Player.new
    end
  end
end
