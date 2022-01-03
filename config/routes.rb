Rails.application.routes.draw do
  resources :addresses
  resources :ejemplos
  devise_for :users
  get '/products', to: 'products#index'
  get '/products/new' , to: 'products#new'
  post '/products', to: 'products#create'
  get '/product/:id', to: 'products#show', as: 'product' 
  get '/products/:id/edit', to: 'products#edit', as: 'edit_product'
  patch '/product/:id', to: 'products#update'
  delete '/product/:id', to: 'products#delete'
  get '/address', to: 'addresses#index'
  #resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
