Rails.application.routes.draw do
  get '/', to: 'welcome#index'
  get '/api/v1/games/todays-game', to: 'todays_game#show'
end
