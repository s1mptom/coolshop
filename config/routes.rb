Coolshop::Application.routes.draw do
  resources :line_items

  resources :carts

  resources :products
    resources :orders


  root to: 'products#index'
end