Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :photos
  resources :followings
  resources :favoritings
  resources :comments
  resources :users
end
