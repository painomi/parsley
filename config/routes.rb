Rails.application.routes.draw do
  resources :tracks
  resources :albums
  resources :songs
  resources :people


  namespace :api do
    resources :rates, only: [:show, :create, :destroy]
  end
end
