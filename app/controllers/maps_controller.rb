class MapsController < ApplicationController
  # GET /moves
  # GET /moves.json
  def index
    @maps = Map.all
  end
  
  # GET /moves
  # GET /moves.json
  def show
    @map = Map.find(params[:id])
  end
end
