require 'rails_helper'

RSpec.describe "montagem_pecas/index", type: :view do
  before(:each) do
    assign(:montagem_pecas, [
      MontagemPeca.create!(),
      MontagemPeca.create!()
    ])
  end

  it "renders a list of montagem_pecas" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
