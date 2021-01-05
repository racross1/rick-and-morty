Rails.application.routes.draw do
  
  resources :quests, only: [:new, :create, :show, :index]
  resources :adventures, only: [:new, :create, :show, :index]
  resources :items, only: [:new, :create, :show, :index]
  resources :morties, only: [:new, :create, :show, :index]
  resources :ricks, only: [:new, :create, :show, :index]
  resources :users, only: [:new, :create, :index]

  root 'application#hello'
  resources :login, only: [:new, :create]

  
end
