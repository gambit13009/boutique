Rails.application.routes.draw do
  
  root 'home#index'
  get '/home', to: 'home#show'	
  resources :items
  resources :carts
  post '/carts/:id', to: 'carts#add_to_cart', as: 'add'
  devise_for :users, controllers: {
        sessions: 'users/sessions'}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  