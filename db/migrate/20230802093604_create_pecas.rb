class CreatePecas < ActiveRecord::Migration[7.0]
  def change
    create_table :pecas do |t|
      t.integer :numero
      t.string :nome
      t.string :valor

      t.timestamps
    end
  end
end
