class RelatoriosController < ApplicationController
  def relatorio_autor
    # Lógica para obter os dados dos autors e seus livros aqui
    @autors = Autor.includes(:livros)
  end
end
