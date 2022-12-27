Rails.application.routes.draw do
  devise_for :users
  resources :categories do
    :expenses
  end
  resources :users, :splash
  # Defines the root path route ("/")\
  root 'category#index'
end
