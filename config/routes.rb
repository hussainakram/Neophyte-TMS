Rails.application.routes.draw do
  resources :companies

  root to: 'visitors#index'
  devise_for :users
end
