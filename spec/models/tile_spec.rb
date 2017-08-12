require 'rails_helper'

RSpec.describe Tile, type: :model do
  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:passable)
  end

  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:not_passable)
  end

  describe "validates" do
    it "validates presence of name" do
      tile = Tile.new(background: 'white', passable: false)
      expect(tile.valid?).to be false
    end

    it "has a default background" do
      tile = Tile.new
      expect(tile.background).to_not be nil
    end

    it "is passable by default" do
      tile = Tile.new
      expect(tile.passable).to be true
    end
  end
end
