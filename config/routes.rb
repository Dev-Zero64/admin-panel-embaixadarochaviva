Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :news # Rotas CRUD para notícias
  root 'news#index' # Rota principal
end
