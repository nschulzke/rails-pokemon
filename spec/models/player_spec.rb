require 'rails_helper'

RSpec.describe Player, type: :model do
  it "generates a map of player locations" do
    player_1 = Player.create(x_pos: 1, y_pos: 1)
    player_2 = Player.create(x_pos: 2, y_pos: 2)
    map = Map.create_blank

    players_map = Player.players_map map
    expect(players_map[1][1]).to eq(player_1)
    expect(players_map[2][2]).to eq(player_2)
  end

  it "finds players based on position" do
    player = Player.create(x_pos: 1, y_pos: 1)
    players_found = Player.at(1, 1)
    expect(player.id).to eq(players_found.first.id)
  end
end
