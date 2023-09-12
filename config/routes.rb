Rails.application.routes.draw do
  resources :montagem_pecas
  resources :montagems
  resources :pecas
  resources :accounts
  resources :fornecedors
  root 'home#index'
  resources :livros
  resources :autors
  get '/relatorios/relatorio_autor', to: 'relatorios#relatorio_autor'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
