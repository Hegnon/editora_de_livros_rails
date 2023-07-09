RSpec.describe "livros/index", type: :view do
  it "renders a list of livros" do
    autor = Autor.create(nome: "name", cpf: "12463278722")
    livro1 = Livro.create!(
      titulo: "teste",
      autor: autor,
      publicado: "01/01/2020",
      isbn: "9788533302273"
    )
    livro2 = Livro.create!(
      titulo: "Outro Título",
      autor: autor,
      publicado: "01/01/2020",
      isbn: "9788533302273"
    )

    assign(:livros, [livro1, livro2])

    render

    expect(rendered).to have_text("teste")
    expect(rendered).to have_text("Outro Título")
  end
end