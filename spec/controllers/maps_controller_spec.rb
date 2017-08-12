require 'rails_helper'

RSpec.describe MapsController, type: :controller do
  describe "GET index" do
    before :each do
      @map = Map.create_blank(name: "Map")
    end

    it "assigns @maps" do
      get :index
      expect(assigns(:maps)).to eq(Map.all)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET show" do
    before :all do
      @map = Map.create_blank(name: "Map")
    end

    it "assigns @map" do
      get :show, id: @map.id
      expect(assigns(:map)).to eq(@map)
    end

    it "renders the index template" do
      get :show, id: @map.id
      expect(response).to render_template("show")
    end
  end
end
