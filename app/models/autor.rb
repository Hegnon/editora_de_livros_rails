class Autor < ApplicationRecord
  has_many :livros

  validates :nome, presence: true
  validates :nome, length: { minimum: 3, maximum: 60 }
  validates :nome, uniqueness: true
  validates :cpf, uniqueness: true
  validate :cpf_is_valid?

  

  private
  def cpf_is_valid?
    errors.add(:cpf, "CPF inválido! Por favor, verificar os dados.") unless CPF.valid?(cpf)
  end
end
