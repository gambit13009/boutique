Rails.application.routes.draw do
  root 'home#index'
  get '/home', to: 'home#show'
  devise_for :users, controllers: {
        sessions: 'users/sessions'}



resources :charges, only: [:new, :create] 


  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  