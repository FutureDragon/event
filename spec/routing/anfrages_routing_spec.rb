require "rails_helper"

RSpec.describe AnfragesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/anfrages").to route_to("anfrages#index")
    end

    it "routes to #new" do
      expect(:get => "/anfrages/new").to route_to("anfrages#new")
    end

    it "routes to #show" do
      expect(:get => "/anfrages/1").to route_to("anfrages#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/anfrages/1/edit").to route_to("anfrages#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/anfrages").to route_to("anfrages#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/anfrages/1").to route_to("anfrages#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/anfrages/1").to route_to("anfrages#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/anfrages/1").to route_to("anfrages#destroy", :id => "1")
    end

  end
end
