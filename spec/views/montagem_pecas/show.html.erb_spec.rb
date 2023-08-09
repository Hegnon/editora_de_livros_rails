require 'rails_helper'

RSpec.describe "montagem_pecas/show", type: :view do
  before(:each) do
    assign(:montagem_peca, MontagemPeca.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
