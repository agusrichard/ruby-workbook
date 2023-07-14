Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/auth/login', to: 'authentication#login'

      resources :users, except: [:update, :destroy] do
        collection do
          patch '/', action: :update
          delete '/', action: :destroy
          put '/', action: :update
        end
      end

      resources :posts do
        resources :comments
        resources :likes
      end

      get '/*a', to: 'application#not_found'
    end
  end
end