require 'rails_helper'

RSpec.describe "maps/show", type: :view do
  it "renders a table map" do
    assign(:map, Map.create_blank)

    render

    expect(rendered).to match /<table class="map">/
  end
end
