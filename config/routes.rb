Rails.application.routes.draw do
  devise_for :users
  resources :user
  resources :emails do
    put :reply, on: :member
    put :redirect, on: :member
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
