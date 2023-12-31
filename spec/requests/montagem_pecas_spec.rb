require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/montagem_pecas", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # MontagemPeca. As you add validations to MontagemPeca, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      MontagemPeca.create! valid_attributes
      get montagem_pecas_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      montagem_peca = MontagemPeca.create! valid_attributes
      get montagem_peca_url(montagem_peca)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_montagem_peca_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      montagem_peca = MontagemPeca.create! valid_attributes
      get edit_montagem_peca_url(montagem_peca)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new MontagemPeca" do
        expect {
          post montagem_pecas_url, params: { montagem_peca: valid_attributes }
        }.to change(MontagemPeca, :count).by(1)
      end

      it "redirects to the created montagem_peca" do
        post montagem_pecas_url, params: { montagem_peca: valid_attributes }
        expect(response).to redirect_to(montagem_peca_url(MontagemPeca.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new MontagemPeca" do
        expect {
          post montagem_pecas_url, params: { montagem_peca: invalid_attributes }
        }.to change(MontagemPeca, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post montagem_pecas_url, params: { montagem_peca: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested montagem_peca" do
        montagem_peca = MontagemPeca.create! valid_attributes
        patch montagem_peca_url(montagem_peca), params: { montagem_peca: new_attributes }
        montagem_peca.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the montagem_peca" do
        montagem_peca = MontagemPeca.create! valid_attributes
        patch montagem_peca_url(montagem_peca), params: { montagem_peca: new_attributes }
        montagem_peca.reload
        expect(response).to redirect_to(montagem_peca_url(montagem_peca))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        montagem_peca = MontagemPeca.create! valid_attributes
        patch montagem_peca_url(montagem_peca), params: { montagem_peca: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested montagem_peca" do
      montagem_peca = MontagemPeca.create! valid_attributes
      expect {
        delete montagem_peca_url(montagem_peca)
      }.to change(MontagemPeca, :count).by(-1)
    end

    it "redirects to the montagem_pecas list" do
      montagem_peca = MontagemPeca.create! valid_attributes
      delete montagem_peca_url(montagem_peca)
      expect(response).to redirect_to(montagem_pecas_url)
    end
  end
end
