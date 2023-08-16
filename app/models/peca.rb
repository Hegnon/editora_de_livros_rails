class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_many :montagem_pecas
    has_many :montagems, through: :montagem_pecas
end
