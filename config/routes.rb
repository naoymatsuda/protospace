Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :prototypes, only: [:show, :edit, :update, :index, :new, :create]

  root 'prototypes#index'
end
