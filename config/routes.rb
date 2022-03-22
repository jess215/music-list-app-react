Rails.application.routes.draw do
 
  namespace :api do

    get 'performers', to:'performers#performers_all'
    resources :songs do
      resources :performers
    end
  
  end

end
