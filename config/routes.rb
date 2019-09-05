Rails.application.routes.draw do
  
  root 'home#index'

  resources :gift_lists do
    collection do
      get 'add_products/:gift_list_id/', :to => "gift_lists#add_products", :as => 'add_product'
    end
  end

  resources :gift_lists_suggestions 

  resources :products 
  get '/search', to: 'search#index'

  resources :user_stores do
    collection do
      post 'create/:product_id', :to => "user_stores#create", :as => 'add_product'
      delete 'delete/:id/', :to => "user_stores#destroy", :as => 'delete_product'
    end
  end
  
  resources :apps, only: :show
  
  namespace :api do
    resources :products
  end
end
