Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]

  root 'prototypes#index'
  get 'prototype/index' => 'prototypes#index'
  get 'prototype/show' => 'prototypes#show'
  get 'prototype/new' => 'prototypes#new'

end
