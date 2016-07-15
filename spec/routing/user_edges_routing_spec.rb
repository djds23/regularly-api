require "rails_helper"

RSpec.describe UserEdgesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_edges").to route_to("user_edges#index")
    end

    it "routes to #new" do
      expect(:get => "/user_edges/new").to route_to("user_edges#new")
    end

    it "routes to #show" do
      expect(:get => "/user_edges/1").to route_to("user_edges#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_edges/1/edit").to route_to("user_edges#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_edges").to route_to("user_edges#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_edges/1").to route_to("user_edges#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_edges/1").to route_to("user_edges#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_edges/1").to route_to("user_edges#destroy", :id => "1")
    end

  end
end
