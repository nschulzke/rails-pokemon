require 'rails_helper'

RSpec.describe "game/map", type: :view do
  context "with two players" do
    before :each do
        @player_1 = Player.create(x_pos: 1, y_pos: 1, background: 'orange')
        @player_2 = Player.create(x_pos: 2, y_pos: 2, background: 'magenta')
        @map = Map.create_blank
        assign( :map, @map )
        assign( :players_map, Player.players_map(@map) )
    end

    it "renders a table map" do
      render
      expect(rendered).to match /<table class="map">/
    end

    it "renders players" do
      render
      expect(rendered).to match /&#9608;/
      expect(rendered).to match /orange/
      expect(rendered).to match /magenta/
    end
  end
end
