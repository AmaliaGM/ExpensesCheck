Rails.application.routes.draw do
  resources :expenses
  resources :categories
  resources :splash

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'splash#index'
end
