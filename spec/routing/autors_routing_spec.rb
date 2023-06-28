require "rails_helper"

RSpec.describe AutorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/autors").to route_to("autors#index")
    end

    it "routes to #new" do
      expect(get: "/autors/new").to route_to("autors#new")
    end

    it "routes to #show" do
      expect(get: "/autors/1").to route_to("autors#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/autors/1/edit").to route_to("autors#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/autors").to route_to("autors#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/autors/1").to route_to("autors#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/autors/1").to route_to("autors#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/autors/1").to route_to("autors#destroy", id: "1")
    end
  end
end
