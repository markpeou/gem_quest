Rails.application.routes.draw do
  root to: 'pages#home'

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  post '/quests/:id', to: 'quests#check_answer'
  #resources :team_quests
  resources :teams

  resources :locations, only: [:index, :show]
  resources :quests

  resources :admin, only: [:show, :edit, :delete]

end
