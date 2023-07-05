require 'rails_helper'

RSpec.describe "autors/show", type: :view do
  before(:each) do
    assign(:autor, Autor.create!(
      nome: "Nome",
      cpf: "12463278722"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
  end
end
