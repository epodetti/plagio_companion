Rails.application.routes.draw do
  resources :rounds
  resources :games
  resources :citations do
    collection do
      get 'per_round'
    end
  end
  devise_for :users
  root 'citations#per_round'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end