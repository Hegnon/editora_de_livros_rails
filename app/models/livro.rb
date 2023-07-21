class Livro < ApplicationRecord
  belongs_to :autor

  def nome
    autor.nome if autor
  end


  validates :titulo, presence: true
  validates :titulo, length: { minimum:1, maximum:100 }
  validates :isbn, presence: true
  validate :isbn_is_valid?

  scope :search, ->(query) { where("titulo like ?", "%#{query}%") }
  scope :by_author_name, ->(query) { joins(:author).where("LOWER(authors.name) LIKE ?", "%#{query.downcase}%") }


  private
  def isbn_is_valid?
    errors.add(:isbn, "ISBN inválido! Por favor, verifique os dados.") unless ISBN.valid?(self.isbn)
  end
end
