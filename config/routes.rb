Rails.application.routes.draw do
  resources :companies, :departments , :projects

  root to: 'visitors#index'
  devise_for :users
end
