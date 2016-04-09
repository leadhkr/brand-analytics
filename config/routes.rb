Rails.application.routes.draw do
  root 'home#index'
  get '/login', to: 'sessions#new'
  get '/register', to: 'users#new'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups do
    resources :documents
  end
end
