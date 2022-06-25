Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, :categories
  get 's3', to: 'products#upload'
  get 'ses', to: 'products#send_email'
end