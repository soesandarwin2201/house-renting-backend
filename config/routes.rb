Rails.application.routes.draw do

  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'
  get '/addHouse', to: 'houses#new'

resources :users 
  post "reservation", to: 'reservations#add'
  get "reservation", to:'reservations#index'
  resources :houses do 
  resources :reservations 
  end
end
