require 'rails_helper'

RSpec.describe "pecas/edit", type: :view do
  let(:peca) {
    Peca.create!(
      numero: 1,
      nome: "MyString",
      valor: "MyString"
    )
  }

  before(:each) do
    assign(:peca, peca)
  end

  it "renders the edit peca form" do
    render

    assert_select "form[action=?][method=?]", peca_path(peca), "post" do

      assert_select "input[name=?]", "peca[numero]"

      assert_select "input[name=?]", "peca[nome]"

      assert_select "input[name=?]", "peca[valor]"
    end
  end
end
