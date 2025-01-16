Rails.application.routes.draw do
  resources :news
  root "hello#index"
end
