Rails.application.routes.draw do
  root 'home#index'
  get '/login', to: 'sessions#new'
  get '/register', to: 'users#new'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :keywords, only: [:create]
  resources :sessions, only: [:new, :create, :destroy]
  resources :groups do
    resources :documents
    resources :tweets, only: :create
    resources :twitter_searches, only: [:create, :show]
  end
end
