class Montagem < ApplicationRecord
    belongs_to :livro
    has_many :montagem_pecas
    has_many :pecas, through: :montagem_pecas
end
