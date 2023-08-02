class AddFornecedorToPecas < ActiveRecord::Migration[7.0]
  def change
    add_reference :pecas, :fornecedor, null: false, foreign_key: true
  end
end
