Rails.application.routes.draw do
  resources :products
  devise_for :users, controllers: {
    registration: 'registration'
  }
 
  root 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
