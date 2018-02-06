Rails.application.routes.draw do

  root to: '/', to: 'pages#home'

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]
end
