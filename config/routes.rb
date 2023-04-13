Rails.application.routes.draw do

  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'

resources :users 
  post "reservation", to: 'reservations#create'
  resources :houses do 
  resources :reservations 
  end
end
