Rails.application.routes.draw do

  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'

resources :users do 
  resources :houses
  resources :reservations 
end 
end
