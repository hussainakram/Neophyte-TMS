Rails.application.routes.draw do
  get 'dashboard/index'
  get 'users/all_users'
  get 'users/graphs'
  get 'users/usr_projects'
  get 'users/usr_challenges'
  

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end
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
