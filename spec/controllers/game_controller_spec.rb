require 'rails_helper'

RSpec.describe GameController, type: :controller do
  describe "GET map" do
    it "assigns @map" do
      get :map
      expect(assigns(:map)).to eq(Map.first)
    end

    it "assigns @players_map" do
      get :map
      expect(assigns(:players_map)).to eq(Map.first.players_map)
    end

    it "renders the map template" do
      get :map
      expect(response).to render_template("map")
    end
  end
end
