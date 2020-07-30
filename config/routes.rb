Rails.application.routes.draw do
  resources :song_playlists
  resources :playlists
  resources :genres
  resources :artists
  resources :songs
  resources :users
  
  # get '/users', to: 'users#new'
  # post '/users', to: 'users#create'
  root 'home#index'

  resources :sessions
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
