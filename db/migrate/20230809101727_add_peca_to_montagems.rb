class AddPecaToMontagems < ActiveRecord::Migration[7.0]
  def change
    add_reference :montagems, :peca, null: false, foreign_key: true
  end
end
