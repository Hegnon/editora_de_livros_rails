class Account < ApplicationRecord
  belongs_to :fornecedor

  def nome
      fornecedor.nome if fornecedor
    end
end

