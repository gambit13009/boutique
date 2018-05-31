Rails.application.routes.draw do
  
  root 'home#index'
  get '/home', to: 'home#show'
  resources :items
  resources :carts
  devise_for :users
  get "users/create", to: "cart#exit
  create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  