Rails.application.routes.draw do
  
  resources :quests, only: [:new, :create, :show, :index]
  resources :adventures, only: [:new, :create, :show, :index]
  resources :items, only: [:new, :create, :show, :index]
  resources :morties, only: [:new, :create, :show, :index]
  resources :ricks, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create]

  root 'application#hello'
  resources :login, only: [:new, :create]

  get '/analytics' => 'analytics#index', as: 'analytics'
  get '/user_analytics' => 'analytics#show', as: 'user_analytics'

  get '/logout', to: 'login#destroy', as: 'logout'

  get '/rankings', to: 'analytics#rankings', as: 'rankings'
end
