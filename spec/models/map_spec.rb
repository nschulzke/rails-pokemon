require 'rails_helper'

RSpec.describe Map, type: :model do
  it "generates a blank map array" do
    map = Map.blank
    expect(map).to be_an(Array)
    expect(map.first).to be_an(Array)
  end
end
