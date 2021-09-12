Rails.application.routes.draw do
  resources :order_products, only: [:index, :show, :create, :update, :destroy]
  resources :products, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :orders, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
