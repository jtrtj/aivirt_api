Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  
  namespace :api do
    namespace :v1 do
      namespace :games do
        get '/todays-game', to: 'todays_game#show'
      end
    end
  end
end
