require 'rails_helper'

RSpec.describe "livros/show", type: :view do
  before(:each) do
    assign(:livro, Livro.create!(
      titulo: "Titulo",
      autor: nil,
      publicado: "Publicado",
      isbn: "Isbn"
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
