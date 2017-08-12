class GameController < ApplicationController
  layout 'game'

  def menu
  end

  def map
    @map = Map.first
    @players_map = Player.players_map @map
  end

  def encounter
  end
end
