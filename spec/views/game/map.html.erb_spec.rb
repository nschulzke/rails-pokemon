require 'rails_helper'

RSpec.describe "game/map", type: :view do
  context "with two players" do
    before :each do
      @map = Map.create_blank
      @player_1 = @map.players.create(x_pos: 1, y_pos: 1, background: 'orange')
      @player_2 = @map.players.create(x_pos: 2, y_pos: 2, background: 'magenta')
      assign( :map, @map )
      assign( :players_map, @map.players_map )
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
