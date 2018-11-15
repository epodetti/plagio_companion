Rails.application.routes.draw do
  resources :rounds
  resources :games
  resources :citations
  devise_for :users
  root 'games#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
