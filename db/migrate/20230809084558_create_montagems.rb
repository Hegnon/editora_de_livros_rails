class CreateMontagems < ActiveRecord::Migration[7.0]
  def change
    create_table :montagems do |t|
      t.string :nome

      t.timestamps
    end
  end
end
