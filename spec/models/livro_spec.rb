require 'rails_helper'

RSpec.describe Livro, type: :model do
  describe "validations" do
    it "validates presence of titulo" do
      livro = Livro.new
      livro.valid?
      expect(livro.errors[:titulo]).to include("can't be blank")
    end

    it "validates presence of isbn" do
      livro = Livro.new
      livro.valid?
      expect(livro.errors[:isbn]).to include("can't be blank")
    end

    it "validates ISBN format" do
      livro = Livro.new(isbn: "123") # ISBN inválido
      livro.valid?
      expect(livro.errors[:isbn]).to include("ISBN inválido! Por favor, verifique os dados.")
    end
  end

  describe "associations" do
    it "belongs to autor" do
      assoc = Livro.reflect_on_association(:autor)
      expect(assoc.macro).to eq(:belongs_to)
    end
  end
end