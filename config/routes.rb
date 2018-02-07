Rails.application.routes.draw do

  resources :team_quests
  resources :teams

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'



  root to: '/', to: 'pages#home'

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]
  resources :admin, only: [:show, :edit, :delete]
end
