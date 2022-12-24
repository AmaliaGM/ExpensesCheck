Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :splash
  resources :categories
   resources :expenses
   resources :users

  # Defines the root path route ("/")\
  root 'categories#index'
end
