require 'rails_helper'

RSpec.describe "montagem_pecas/new", type: :view do
  before(:each) do
    assign(:montagem_peca, MontagemPeca.new())
  end

  it "renders new montagem_peca form" do
    render

    assert_select "form[action=?][method=?]", montagem_pecas_path, "post" do
    end
  end
end
