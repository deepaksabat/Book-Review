Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users 
  resources :books do
  	resources :reviews
  end
  resources :categories
  resources :profiles 
  root 'books#index'
end
