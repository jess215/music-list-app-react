Rails.application.routes.draw do
 
  namespace :api do
    resources :songs do
      resources :performers
    end
  end
end
