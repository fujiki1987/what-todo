Rails.application.routes.draw do
  devise_for :users
  root "tasks#index"
  resources :tasks, only: [:index, :create, :update]
  resources :users, only: [:edit, :update]
  resources :notes, only: [:create, :update]
end
