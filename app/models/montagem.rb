class Montagem < ApplicationRecord
    belongs_to :livro
    has_and_belongs_to_many :pecas

end
