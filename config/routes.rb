Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/trending' => 'home#trending'

  namespace :admin do
    get '/dashboard' => 'admin#dashboard'
    resources :albums
    resources :artists
    resources :songs
    resources :genres
  end

  namespace :tuner do
    resources :favorites, only: [:index, :create, :destroy]
    resources :playlists
    resources :playlist_songs, only: [:create, :destroy]
  end
end
