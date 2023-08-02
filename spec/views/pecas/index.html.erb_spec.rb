require 'rails_helper'

RSpec.describe "pecas/index", type: :view do
  before(:each) do
    assign(:pecas, [
      Peca.create!(
        numero: 2,
        nome: "Nome",
        valor: "Valor"
      ),
      Peca.create!(
        numero: 2,
        nome: "Nome",
        valor: "Valor"
      )
    ])
  end

  it "renders a list of pecas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Valor".to_s), count: 2
  end
end
