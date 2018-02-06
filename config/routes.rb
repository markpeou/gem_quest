Rails.application.routes.draw do
  resources :team_quests
  resources :quests
  resources :locations
  resources :teams

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

end
