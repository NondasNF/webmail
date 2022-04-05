Rails.application.routes.draw do
  root 'emails#index'
  devise_for :users
  resources :user
  resources :emails do
    resources :replies, only: [:new, :create]
    put :redirect, on: :member
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
