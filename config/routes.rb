Rails.application.routes.draw do

  devise_for :users
  resources :products, only: [:show, :index]
  root to: 'products#index'

  resources :carts, only: :show

  resources :order_lines, only: [:create, :destroy]

end
