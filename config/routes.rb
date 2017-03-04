Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :prototypes do
    resources :likes, only: [:create, :destroy]
  end
  root 'prototypes#index'
  resources :prototypes do
    resources :comments, only: [:create ]
  end
end
