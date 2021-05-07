Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :targets
      resources :engagements
    end
  end
end
