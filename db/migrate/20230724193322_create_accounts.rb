class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.references :fornecedor, null: false, foreign_key: true
      t.string :numero_conta

      t.timestamps
    end
  end
end
