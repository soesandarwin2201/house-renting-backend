Rails.application.routes.draw do
  root 'users#index'
  get 'houses/index'
end
