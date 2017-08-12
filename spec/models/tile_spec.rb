require 'rails_helper'

RSpec.describe Tile, type: :model do
  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:passable)
  end

  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:not_passable)
  end

  describe "validates" do
    before :each do
      @tile = Tile.create
    end

    it "validates presence of name" do
      expect(@tile.errors[:name]).to include("can't be blank")
    end

    it "has a default background" do
      expect(@tile.background).to be_a(String)
    end

    it "is passable by default" do
      expect(@tile.passable).to be true
    end
  end
end
