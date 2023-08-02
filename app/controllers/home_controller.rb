class HomeController < ApplicationController
    layout 'home'
  
    def index
        @latest_livros= Livro.order(created_at: :desc).limit(5)
        @popular_autors = Autor.order(followers_count: :desc).limit(3)
    end
end