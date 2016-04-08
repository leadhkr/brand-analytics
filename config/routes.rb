Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :groups
  resources :documents
end
