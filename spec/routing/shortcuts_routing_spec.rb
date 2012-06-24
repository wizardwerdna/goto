require "spec_helper"

describe ShortcutsController do
  describe "routing" do

    it "routes to #index" do
      get("/shortcuts").should route_to("shortcuts#index")
    end

    it "routes to #new" do
      get("/shortcuts/new").should route_to("shortcuts#new")
    end

    it "routes to #show" do
      get("/shortcuts/1").should route_to("shortcuts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shortcuts/1/edit").should route_to("shortcuts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shortcuts").should route_to("shortcuts#create")
    end

    it "routes to #update" do
      put("/shortcuts/1").should route_to("shortcuts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shortcuts/1").should route_to("shortcuts#destroy", :id => "1")
    end

  end
end
