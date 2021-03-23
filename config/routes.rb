Rails.application.routes.draw do
  resources :subscriptions
  devise_for :users
  resources :cars
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end