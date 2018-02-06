Rails.application.routes.draw do  
  root to: '/', to: 'pages#home'

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]
  resources :team_quests
  resources :quests
  resources :locations
  resources :teams

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'
end
