require 'rails_helper'

RSpec.describe "livros/new", type: :view do
  before(:each) do
    assign(:livro, Livro.new(
      titulo: "MyString",
      autor: nil,
      publicado: "MyString",
      isbn: "MyString"
    ))
  end

  it "renders new livro form" do
    render

    assert_select "form[action=?][method=?]", livros_path, "post" do

      assert_select "input[name=?]", "livro[titulo]"

      assert_select "input[name=?]", "livro[autor_id]"

      assert_select "input[name=?]", "livro[publicado]"

      assert_select "input[name=?]", "livro[isbn]"
    end
  end
end
