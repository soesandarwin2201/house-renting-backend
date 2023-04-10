Rails.application.routes.draw do
  get 'users/index'
  root 'houses#index'
  get 'reservations/index'

  resources :houses
end
