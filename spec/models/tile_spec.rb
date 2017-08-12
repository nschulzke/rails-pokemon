require 'rails_helper'

RSpec.describe Tile, type: :model do
  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:passable)
  end
  it "provides a scope of passable tiles" do
    expect(Tile).to respond_to(:not_passable)
  end
end
