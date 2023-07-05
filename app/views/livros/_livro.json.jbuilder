json.extract! livro, :id, :titulo, :autor_id, :publicado, :isbn, :created_at, :updated_at
json.url livro_url(livro, format: :json)
