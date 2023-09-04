class CreateMontagemPecas < ActiveRecord::Migration[7.0]
  def change
    create_table :montagem_pecas do |t|
      t.references :montagem, null: false, foreign_key: true
      t.references :peca, null: false, foreign_key: true

      t.timestamps
    end
  end
end
