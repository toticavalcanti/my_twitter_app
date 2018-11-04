Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'user_token', to: 'user_token#create'
      resources :follows, only: %i[create destroy]
      resources :likes, only: %i[create destroy]
      resources :tweets, only: %i[index show create update destroy]
      resources :users, only: %i[show create update destroy] do
        member do
          get 'following'
          get 'followers'
        end
        get 'current', on: :collection
      end
    end
  end
end