require 'rails_helper'

RSpec.describe "autors/index", type: :view do
  before(:each) do
    assign(:autors, [
      Autor.create!(
        nome: "Nome",
        cpf: "12463278722"
      ),
      Autor.create!(
        nome: "Nome",
        cpf: "12463278722"
      )
    ])
  end

  it "renders a list of autors" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cpf".to_s), count: 2
  end
end
