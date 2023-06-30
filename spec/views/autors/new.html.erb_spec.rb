require 'rails_helper'

RSpec.describe "autors/new", type: :view do
  before(:each) do
    assign(:autor, Autor.new(
      nome: "MyString",
      cpf: "MyString"
    ))
  end

  it "renders new autor form" do
    render

    assert_select "form[action=?][method=?]", autors_path, "post" do

      assert_select "input[name=?]", "autor[nome]"

      assert_select "input[name=?]", "autor[cpf]"
    end
  end
end
