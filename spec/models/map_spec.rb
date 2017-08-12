require 'rails_helper'

RSpec.describe Map, type: :model do
  context "with a blank map" do
    before :each do
      @map = Map.create_blank(name: "Map", tile: Tile.first)
    end

    it "stores as a 2d integer array" do
      @map.map.each do |row|
        row.each do |tile|
          expect(tile).to be_an(Integer)
        end
      end
    end

    it "allows lookup of tiles by id" do
      tile = @map.tile(Tile.first.id)
      expect(tile).to be_a(Tile)
    end

    it "generates a 2d tiles array" do
      @map.tiles.each do |row|
        row.each do |tile|
          expect(tile).to be_a(Tile)
        end
      end
    end
  end

  context "using map modifiers" do
    before :each do
      @map = Map.create_blank(name: "Map", tile: Tile.first)
    end

    it "creates a wall around the edge of the map" do
      expect(@map.map.first.first).to be(Tile.first.id)
      expect(@map.map.last.last).to be(Tile.first.id)
      @map.wall(tile: Tile.last)
      expect(@map.map.first.first).to be(Tile.last.id)
      expect(@map.map.last.last).to be(Tile.last.id)
    end
  end
end
