require 'rails_helper'

RSpec.describe "montagems/edit", type: :view do
  let(:montagem) {
    Montagem.create!(
      nome: "MyString"
    )
  }

  before(:each) do
    assign(:montagem, montagem)
  end

  it "renders the edit montagem form" do
    render

    assert_select "form[action=?][method=?]", montagem_path(montagem), "post" do

      assert_select "input[name=?]", "montagem[nome]"
    end
  end
end
