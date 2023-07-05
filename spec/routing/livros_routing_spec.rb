require "rails_helper"

RSpec.describe LivrosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/livros").to route_to("livros#index")
    end

    it "routes to #new" do
      expect(get: "/livros/new").to route_to("livros#new")
    end

    it "routes to #show" do
      expect(get: "/livros/1").to route_to("livros#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/livros/1/edit").to route_to("livros#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/livros").to route_to("livros#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/livros/1").to route_to("livros#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/livros/1").to route_to("livros#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/livros/1").to route_to("livros#destroy", id: "1")
    end
  end
end
