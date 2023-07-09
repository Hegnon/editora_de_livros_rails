require 'rails_helper'

RSpec.describe "livros/show", type: :view do
  let(:autor) {
    Autor.create(nome: "name", cpf: "12463278722")
  }

  before(:each) do
    assign(:livro, Livro.create!(
      titulo: "teste",
      autor: autor,
      publicado: "01/01/2020",
      isbn: "9788533302273"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Publicado/)
    expect(rendered).to match(/Isbn/)
  end
end
