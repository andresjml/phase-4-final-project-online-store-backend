Rails.application.routes.draw do
  resources :order_products, only: [:index, :show, :create, :update, :destory]
  resources :products, only: [:index, :show, :create, :update, :destory]
  resources :categories, only: [:index, :show, :create, :update, :destory]
  resources :orders, only: [:index, :show, :create, :update, :destory]
  resources :users, only: [:index, :show, :create, :update, :destory]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
