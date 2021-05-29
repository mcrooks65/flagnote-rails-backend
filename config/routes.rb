Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :engagements do
        resources :targets
      end
    end
  end
end
