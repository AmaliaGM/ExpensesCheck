Rails.application.routes.draw do
  devise_for :users
  scope '/admin' do
    resources :users
  end
  resources :categories, :expenses, :users, :splash

  # Defines the root path route ("/")\
  root 'categories#index'
end
