Rails.application.routes.draw do
  shallow do
    resources :companies do
      resources :departments do
        resources :projects do
          resources :challenges
        end
      end
    end
  end

  root to: 'visitors#index'
  devise_for :users
end
