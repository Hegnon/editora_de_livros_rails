RSpec.describe "livros/edit", type: :view do
  let(:autor) {
    Autor.create(nome: "name", cpf: "12463278722")
  }

  let(:livro) {
    Livro.create!(
      titulo: "abc",
      autor: autor,
      publicado: "MyString",
      isbn: "9788533302273"
    )
  }

  before(:each) do
    assign(:livro, livro)
  end

  it "renders the edit livro form" do
    render

    assert_select "form[action=?][method=?]", livro_path(livro), "post" do
      assert_select "input[name=?]", "livro[titulo]"
      assert_select "input[name=?]", "livro[autor_id]", value: autor.id
      assert_select "input[name=?]", "livro[publicado]"
      assert_select "input[name=?]", "livro[isbn]"
    end
  end
end