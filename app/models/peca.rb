class Peca < ApplicationRecord
    belongs_to :fornecedor
    has_and_belongs_to_many :montagems, join_table: 'montagem_pecas'

    scope :by_fornecedor_nome, ->(query) { joins(:fornecedor).where("fornecedors.nome LIKE ?", "%#{query}%") }


end
