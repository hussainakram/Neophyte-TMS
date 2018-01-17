Rails.application.routes.draw do
  shallow do
    resources :companies do
      resources :departments do
        resources :projects do
          resources :challenges do
            resources :quizzes
            resources :resources

          end
        end
      end
    end
  end

  root to: 'visitors#index'
  devise_for :users
end
