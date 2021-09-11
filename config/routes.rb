Rails.application.routes.draw do
  resources :order_products
  resources :products
  resources :categories
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
