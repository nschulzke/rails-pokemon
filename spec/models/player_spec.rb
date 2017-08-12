require 'rails_helper'

RSpec.describe Player, type: :model do
  it "finds players based on position" do
    player = Player.create(x_pos: 6, y_pos: 6, map: Map.first)
    players_found = Player.at(6, 6)
    expect(player.id).to eq(players_found.first.id)
  end

  describe "moves" do
    before :each do
      @player = Player.create(x_pos: 5, y_pos: 5, map: Map.first)
    end

    it "moves up" do
      @player.move(:up)
      expect(@player.y_pos).to eq(4)
    end

    it "moves down" do
      @player.move(:down)
      expect(@player.y_pos).to eq(6)
    end

    it "moves left" do
      @player.move(:left)
      expect(@player.x_pos).to eq(4)
    end

    it "moves right" do
      @player.move(:right)
      expect(@player.x_pos).to eq(6)
    end
  end
end
