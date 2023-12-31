Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders, only: [:create]
  resources :categories, only: [:index]
  resources :products, only: [:index, :show]
end