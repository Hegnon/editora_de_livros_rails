require "rails_helper"

RSpec.describe MontagemsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/montagems").to route_to("montagems#index")
    end

    it "routes to #new" do
      expect(get: "/montagems/new").to route_to("montagems#new")
    end

    it "routes to #show" do
      expect(get: "/montagems/1").to route_to("montagems#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/montagems/1/edit").to route_to("montagems#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/montagems").to route_to("montagems#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/montagems/1").to route_to("montagems#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/montagems/1").to route_to("montagems#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/montagems/1").to route_to("montagems#destroy", id: "1")
    end
  end
end
