Rails.application.routes.draw do
  
  resources :rooms, only: [:index, :create]
  resources :guesses, only: [:create]
  mount ActionCable.server => '/cable'

end
