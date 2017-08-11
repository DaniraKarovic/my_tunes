Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :albums
  resources :artists
  resources :songs
end
