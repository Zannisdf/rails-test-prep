Rails.application.routes.draw do
  get 'products', to: 'products#index'
  patch 'products/:id/set_favourite', to: 'products#set_favourite', as: 'set_fav'
  get 'products/:id', to: 'products#show', as: 'product'
  resources :products, only: [:create, :destroy, :update, :edit]
  root 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
