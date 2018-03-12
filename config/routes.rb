Rails.application.routes.draw do
  get 'scores/index'

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :scores
      end
      resources :courses
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
