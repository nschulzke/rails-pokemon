class GameController < ApplicationController
  layout 'game'

  def menu
  end

  def map
    @map = Map.first
    @players_map = @map.players_map
  end

  def encounter
  end
end
