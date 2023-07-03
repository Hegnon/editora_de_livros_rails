require 'rails_helper'

RSpec.describe Autor, type: :model do
  it 'validates presence of nome' do
    autor = Autor.new
    autor.valid?
    expect(autor.errors[:nome]).to include("can't be blank")
  end

  it 'validates minimum length of nome' do
    autor = Autor.new(nome: 'ab')
    autor.valid?
    expect(autor.errors[:nome]).to include("is too short (minimum is 3 characters)")
  end

  it 'validates maximum length of nome' do
    nome = 'a' * 61
    autor = Autor.new(nome: nome)
    autor.valid?
    expect(autor.errors[:nome]).to include("is too long (maximum is 60 characters)")
  end

  it 'validates CPF format' do
    autor = Autor.new(cpf: '12345678900') # CPF inválido
    autor.valid?
    expect(autor.errors[:cpf]).to include("CPF inválido! Por favor, verificar os dados.")
  end
end