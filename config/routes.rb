Rails.application.routes.draw do

  root to: '/', to: 'pages#home'

  resources :locations, only: [:index, :show]
  resources :quests, only: [:show]
  resources :admin, only: [:show, :edit, :delete]
end
