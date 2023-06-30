require 'rails_helper'

RSpec.describe "autors/edit", type: :view do
  let(:autor) {
    Autor.create!(
      nome: "MyString",
      cpf: "MyString"
    )
  }

  before(:each) do
    assign(:autor, autor)
  end

  it "renders the edit autor form" do
    render

    assert_select "form[action=?][method=?]", autor_path(autor), "post" do

      assert_select "input[name=?]", "autor[nome]"

      assert_select "input[name=?]", "autor[cpf]"
    end
  end
end
