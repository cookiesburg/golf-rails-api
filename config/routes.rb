Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'users/scores' => 'scores#index'
      get 'users/:id/scores' => 'users#scores'
      resources :users
      resources :scores
      resources :courses
    end
  end

end
