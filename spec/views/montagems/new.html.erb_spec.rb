require 'rails_helper'

RSpec.describe "montagems/new", type: :view do
  before(:each) do
    assign(:montagem, Montagem.new(
      nome: "MyString"
    ))
  end

  it "renders new montagem form" do
    render

    assert_select "form[action=?][method=?]", montagems_path, "post" do

      assert_select "input[name=?]", "montagem[nome]"
    end
  end
end
