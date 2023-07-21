require 'rails_helper'

RSpec.describe "fornecedors/new", type: :view do
  before(:each) do
    assign(:fornecedor, Fornecedor.new(
      nome: "MyString",
      cnpj: "MyString"
    ))
  end

  it "renders new fornecedor form" do
    render

    assert_select "form[action=?][method=?]", fornecedors_path, "post" do

      assert_select "input[name=?]", "fornecedor[nome]"

      assert_select "input[name=?]", "fornecedor[cnpj]"
    end
  end
end
