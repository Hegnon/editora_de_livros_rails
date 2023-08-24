class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_and_belongs_to_many :montagems
    #has_many :montagems, through: :montagem_pecas
end
