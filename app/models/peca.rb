class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_many :montagem
end
