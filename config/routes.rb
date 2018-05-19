Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'
  post '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  post '/signout' => 'sessions#destroy'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'login' => 'login#index', as: 'login'
  resources :users, only: [:index, :show, :edit, :update, :destroy]

  resources :tracks
  resources :albums
  resources :songs
  resources :people

  namespace :api do
    resources :rates, only: [:show, :create, :destroy]
  end

  root to: 'songs#index'
end
