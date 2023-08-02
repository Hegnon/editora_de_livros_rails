class Fornecedor < ApplicationRecord
  has_many :accounts
  has_many :pecas

  validates :nome, presence: true
  validates :nome, length: { minimum: 3, maximum: 60 }
  validates :nome, uniqueness: {scope: :cnpj}
  validate :cnpj_is_valid?

  private
  def cnpj_is_valid?
    errors.add(:cnpj, "CNPJ inválido! Por favor, verifique os dados." ) unless CNPJ.valid?(cnpj)
  end
end
