Rails.application.routes.draw do
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
end