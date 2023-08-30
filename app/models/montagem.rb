class Montagem < ApplicationRecord
    belongs_to :livro
    has_and_belongs_to_many :pecas, join_table: 'montagem_pecas'

end
