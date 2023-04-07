Rails.application.routes.draw do
  root 'users#index'
  get 'houses/index'
  get 'reservations/index'
end
