require 'rails_helper'

RSpec.describe "maps/index", type: :view do
  it "displays all the maps" do
    assign(:maps, [
      Map.create_blank(name: "Georgia"),
      Map.create_blank(name: "Florida"),
    ])

    render

    expect(rendered).to match /Georgia/
    expect(rendered).to match /Florida/
  end
end
