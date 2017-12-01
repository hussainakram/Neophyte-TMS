Rails.application.routes.draw do
  resources :companies, :departments

  root to: 'visitors#index'
  devise_for :users
end
