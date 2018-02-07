Rails.application.routes.draw do
  root to: 'pages#home'

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'
  # resources :team_quests
  resources :teams
  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]
end
