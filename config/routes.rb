Rails.application.routes.draw do
  devise_for :users
  resources :cars, only: %i[index new show create destroy] do 
    resources :subscriptions, only: %i[new create]
  end
  
  namespace :user do
    resources :subscriptions, only: :index
  end

  root to: 'cars#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
