require 'rails_helper'

RSpec.describe "autors/show", type: :view do
  before(:each) do
    assign(:autor, Autor.create!(
      nome: "Nome",
      cpf: "Cpf"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Cpf/)
  end
end
