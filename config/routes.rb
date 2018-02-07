Rails.application.routes.draw do

  resources :team_quests
  resources :teams

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  root to: 'pages#home'

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]

end
