Rails.application.routes.draw do
 
  namespace :api do
    resources :songs do
    end
  end
end
