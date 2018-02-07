Rails.application.routes.draw do
  root to: 'pages#home'

  get '/login', to: 'sessions#new'
  post '/session', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  # resources :team_quests
  resources :teams

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]

  resources :admin, only: [:show, :edit, :delete]

end
