Rails.application.routes.draw do
devise_for :users

    resources :products do
    member do
      post :add_to_cart
    end
  end

  namespace :admin do
    resources :products
    resources :carts
  end

  root 'products#index'
end
