Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :index, :update, :destroy]
  resources :teams, only: [:create, :index, :update, :destroy]
  resources :senators, only: [:index]
  resources :bills, only: [:index]



end
