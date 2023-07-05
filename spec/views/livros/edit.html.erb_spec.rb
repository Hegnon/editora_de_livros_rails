require 'rails_helper'

RSpec.describe "livros/edit", type: :view do
  let(:livro) {
    Livro.create!(
      titulo: "MyString",
      autor: nil,
      publicado: "MyString",
      isbn: "MyString"
    )
  }

  before(:each) do
    assign(:livro, livro)
  end

  it "renders the edit livro form" do
    render

    assert_select "form[action=?][method=?]", livro_path(livro), "post" do

      assert_select "input[name=?]", "livro[titulo]"

      assert_select "input[name=?]", "livro[autor_id]"

      assert_select "input[name=?]", "livro[publicado]"

      assert_select "input[name=?]", "livro[isbn]"
    end
  end
end
