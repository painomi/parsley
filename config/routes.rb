Rails.application.routes.draw do
  resources :tracks
  resources :albums
  resources :songs
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
