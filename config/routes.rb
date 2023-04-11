Rails.application.routes.draw do
  get 'users/index', to: 'users#index'
  get 'houses/index'
  get 'reservations/index'
  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'
end
