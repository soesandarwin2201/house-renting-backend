Rails.application.routes.draw do
  root 'home#index'
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  post '/login', to: 'authentication#login'
  post '/signup', to: 'users#create'
  get '/addHouse', to: 'houses#new'

resources :users
  post "reservation", to: "reservations#add"
  get "reservation", to: "reservations#index"
  resources :houses do
    resources :reservations, only: [:index] do
      post :add, on: :collection
    end
  end
end
