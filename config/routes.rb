Rails.application.routes.draw do
   devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit,:update, :destroy]
  resources :users, only: [:show, :index, :edit, :update]
  root 'homes#index'
  get 'home/about' => 'homes#about'
end