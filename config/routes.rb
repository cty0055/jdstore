Rails.application.routes.draw do
devise_for :users

    resources :products do
    member do
      post :add_to_cart
    end
  end

  namespace :admin do
    resources :products
  end

  root 'products#index'
  resources :cart_items
  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end
  resources :orders
  namespace :account do
   resources :orders
 end
end
