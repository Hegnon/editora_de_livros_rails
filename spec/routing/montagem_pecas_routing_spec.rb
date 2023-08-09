require "rails_helper"

RSpec.describe MontagemPecasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/montagem_pecas").to route_to("montagem_pecas#index")
    end

    it "routes to #new" do
      expect(get: "/montagem_pecas/new").to route_to("montagem_pecas#new")
    end

    it "routes to #show" do
      expect(get: "/montagem_pecas/1").to route_to("montagem_pecas#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/montagem_pecas/1/edit").to route_to("montagem_pecas#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/montagem_pecas").to route_to("montagem_pecas#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/montagem_pecas/1").to route_to("montagem_pecas#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/montagem_pecas/1").to route_to("montagem_pecas#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/montagem_pecas/1").to route_to("montagem_pecas#destroy", id: "1")
    end
  end
end
