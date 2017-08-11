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

end
