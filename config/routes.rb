Rails.application.routes.draw do
  resources :explore_kittens, only: [:index]
  resources :kittens
  root 'kittens#index'
end
