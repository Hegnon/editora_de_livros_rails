require 'rails_helper'

RSpec.describe "pecas/show", type: :view do
  before(:each) do
    assign(:peca, Peca.create!(
      numero: 2,
      nome: "Nome",
      valor: "Valor"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Valor/)
  end
end
