Rails.application.routes.draw do
  shallow do
    resources :companies do
      get 'user_graphs'
      resources :departments do
        resources :projects do
          resources :challenges do
            post 'complete_challenge'
            resources :quizzes do
              resources :quiz_attempts
            end
            resources :resources

          end
        end
      end
    end
  end

  root to: 'visitors#index'
  devise_for :users, controllers: { invitations: 'users/invitations' }
end
