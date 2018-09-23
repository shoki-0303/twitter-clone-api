Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :tweets, only: [:index, :show]
      resources :users, only: [:show]
    end
  end
end
