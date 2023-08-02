class Account < ApplicationRecord
  belongs_to :fornecedor

  def nome
    fornecedor.nome if fornecedor
  end
  

  validates :numero_conta, presence: true
  validates :numero_conta, uniqueness: true
  validate :account_digit_is_valid?

  scope :search, ->(query) { where("account_number like ?", "%#{query}%") }

  private
  def account_digit_is_valid?
    d = CheckAccountDigit.new(numero_conta, digit)
    errors.add(:digit, "Dígito verificador inválido! Por favor, verifique os dados.") unless d.check_digit?
  end
end
