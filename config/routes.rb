Rails.application.routes.draw do
  
  get 'orders/index'
  get 'orders/show'
  root 'home#index'
  get '/home', to: 'home#show'	
  resources :items
  resources :carts
	resources :charges
  resources :mailers
  post '/carts/:id', to: 'carts#add_to_cart', as: 'add'
  devise_for :users, controllers: {

        sessions: 'users/sessions', mailers: "mailers/user_mailer"}
  get '/users/edit', to: "devise/registrations#edit", as: "profile"

  get '/youpi', to: 'orders#index'
  post '/youpi', to: 'carts#checkout', as: 'checkout'   
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  