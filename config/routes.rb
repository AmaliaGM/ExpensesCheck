Rails.application.routes.draw do
  devise_for :users
  resources :categories, :expenses, :users, :splash
  
  # Defines the root path route ("/")\
  root 'categories#index'
end
