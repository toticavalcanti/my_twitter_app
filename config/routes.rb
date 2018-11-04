Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'follows/create'
      get 'follows/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'likes/create'
      get 'likes/destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'tweets/index'
      get 'tweets/show'
      get 'tweets/create'
      get 'tweets/destroy'
      get 'tweets/update'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'users/create'
      get 'users/destroy'
      get 'users/update'
      get 'users/current'
      get 'users/show'
      get 'users/following'
      get 'users/followers'
    end
  end
  namespace :api do
    namespace :v1 do
      post 'user_token', to: 'user_token#create'
    end
  end
end