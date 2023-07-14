Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, except: [:update, :destroy] do
        collection do
          patch '/', action: :update
          delete '/', action: :destroy
          put '/', action: :update
        end
      end
      resources :posts

      post '/auth/login', to: 'authentication#login'
      get '/*a', to: 'application#not_found'
    end
  end
end