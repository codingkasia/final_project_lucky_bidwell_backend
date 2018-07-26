Rails.application.routes.draw do
  
  #routes for login
  post 'login', to: 'auth#login'
  get '/user', to: 'users#show_user'


  resources :users, only: [:index]
  resources :rooms, only: [:index, :create]
  resources :guesses, only: [:create]
  mount ActionCable.server => '/cable'

end
