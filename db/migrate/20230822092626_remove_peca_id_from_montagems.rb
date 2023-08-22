class RemovePecaIdFromMontagems < ActiveRecord::Migration[7.0]
  def change
    remove_reference :montagems, :peca, null: false, foreign_key: true
  end
end
