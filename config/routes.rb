Rails.application.routes.draw do
  
  root 'home#index'
  get '/home', to: 'home#show'
  resources :items, only: [:show]
  resources :carts
  devise_for :users, controllers: {
        sessions: 'users/sessions'}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  