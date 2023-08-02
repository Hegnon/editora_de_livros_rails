require 'rails_helper'

RSpec.describe "pecas/new", type: :view do
  before(:each) do
    assign(:peca, Peca.new(
      numero: 1,
      nome: "MyString",
      valor: "MyString"
    ))
  end

  it "renders new peca form" do
    render

    assert_select "form[action=?][method=?]", pecas_path, "post" do

      assert_select "input[name=?]", "peca[numero]"

      assert_select "input[name=?]", "peca[nome]"

      assert_select "input[name=?]", "peca[valor]"
    end
  end
end
