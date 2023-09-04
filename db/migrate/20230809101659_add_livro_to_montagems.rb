class AddLivroToMontagems < ActiveRecord::Migration[7.0]
  def change
    add_reference :montagems, :livro, null: false, foreign_key: true
  end
end
