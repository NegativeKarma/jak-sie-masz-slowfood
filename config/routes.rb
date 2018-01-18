Rails.application.routes.draw do
  get 'restaurant/index'

  root controller: :restaurant, action: :index
  resources :restaurant, only: [:show, :create]
  resources :orders, only: [:create, :update]
end
