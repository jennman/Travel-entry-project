Rails.application.routes.draw do
  resources :journals
  post '/journals', to: 'journals#create'
  resources :entries
  resources :locations
  resources :users
  
  post '/login', to: 'sessions#create'
  get '/userInSession', to: 'sessions#get_logged_in_user'
  # get '/authorized', to: 'users#show'

  delete '/logout', to:"sessions#destroy"

  # get '/signup', to: 'signup#new'

  # post '/locations', to: 'locations#show'


end
