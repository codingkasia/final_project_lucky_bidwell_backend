Rails.application.routes.draw do
  
  #routes for login
  post 'login', to: 'auth#login'
  get '/user', to: 'users#show_user'

  
  resources :users, only: [:index]
  resources :rooms, only: [:index, :create]
  resources :guesses, only: [:index, :create, :update]
  resources :user_guesses, only: [:index]
  resources :points, only: [:index, :create, :update]
  resources :scores, only: [:index, :create, :update]
  resources :numbers, only: [:index, :crete, :update]
  mount ActionCable.server => '/cable'

end
