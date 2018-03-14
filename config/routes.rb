Rails.application.routes.draw do
  root to: 'pages#home'

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  post '/quests/:id', to: 'quests#check_answer'

  get '/quests/new', to: 'admins#new'
  post '/quests', to: 'admins#create'

  post '/quests/:id/edit', to: 'admins#update'

  # resources :team_quests
  resources :teams

  resources :locations, only: [:index, :show]
  resources :quests

  resources :admin, only: [:show, :edit, :delete]

end
