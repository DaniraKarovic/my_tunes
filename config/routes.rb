Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/songs' => 'home#songs'
  get '/contact'=> 'home#contact'
  get '/my_profile'=> 'home#my_profile'

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
    resources :songs, only: [:index, :show]
    get '/my_profile'=> 'tuner#my_profile'

  end
end
