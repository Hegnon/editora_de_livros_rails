class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_many :montagems
    has_many :montagem_pecas
    has_many :montagens, through: :montagem_pecas

end
