require 'rails_helper'

RSpec.describe "livros/index", type: :view do
  before(:each) do
    assign(:livros, [
      Livro.create!(
        titulo: "Titulo",
        autor: nil,
        publicado: "Publicado",
        isbn: "Isbn"
      ),
      Livro.create!(
        titulo: "Titulo",
        autor: nil,
        publicado: "Publicado",
        isbn: "Isbn"
      )
    ])
  end

  it "renders a list of livros" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Titulo".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Publicado".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Isbn".to_s), count: 2
  end
end
