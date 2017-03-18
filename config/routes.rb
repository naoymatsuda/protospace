Rails.application.routes.draw do
  devise_for :users
  resources :tags, only: [:show, :index]
  resources :users, only: [:show, :edit, :update]
  root 'prototypes#index'
  resources :prototypes do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'newest'
    end
  end
end
