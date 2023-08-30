class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_and_belongs_to_many :montagems, join_table: 'montagem_pecas'

end
