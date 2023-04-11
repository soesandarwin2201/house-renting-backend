Rails.application.routes.draw do
  get 'users/index'
  root 'houses#index'
  get 'reservations/index'


  resources :houses
  post '/', to: 'houses#create'

  resources :reservations 

end
