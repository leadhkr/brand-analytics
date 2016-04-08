Rails.application.routes.draw do
  root 'home#index'
  resources :groups do
    resources :documents
  end
end
