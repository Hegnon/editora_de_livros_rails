class Montagem < ApplicationRecord
    belongs_to :livro
    has_and_belongs_to_many :pecas
    #has_many :pecas, through: :montagem_pecas
end
