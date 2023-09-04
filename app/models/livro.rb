class Livro < ApplicationRecord
  belongs_to :autor
  has_many :montagems

  def nome
    autor.nome if autor
  end


  validates :titulo, presence: true
  validates :titulo, length: { minimum:1, maximum:100 }
  validates :isbn, presence: true
  # validates :isbn, uniqueness: true
  # validate :isbn_is_valid?

  scope :search, ->(query) { where("titulo like ?", "%#{query}%") }
  scope :by_autor_nome, ->(query) { joins(:autor).where("LOWER(autors.nome) LIKE ?", "%#{query.downcase}%") }


  private
  def isbn_is_valid?
    errors.add(:isbn, "ISBN inválido! Por favor, verifique os dados.") unless ISBN.valid?(self.isbn)
  end
end
