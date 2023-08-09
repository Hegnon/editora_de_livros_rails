require 'rails_helper'

RSpec.describe "montagem_pecas/edit", type: :view do
  let(:montagem_peca) {
    MontagemPeca.create!()
  }

  before(:each) do
    assign(:montagem_peca, montagem_peca)
  end

  it "renders the edit montagem_peca form" do
    render

    assert_select "form[action=?][method=?]", montagem_peca_path(montagem_peca), "post" do
    end
  end
end
