Rails.application.routes.draw do
  get 'products/index', as: 'products'
  post 'products/index', to: 'products#create', as: 'new_product'

  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
