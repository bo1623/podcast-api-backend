Rails.application.routes.draw do
  resources :reviews
  resources :savedepisodes
  resources :episodes
  resources :users
  resources :podcasts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/savedepisodes/delete', to: 'savedepisodes#destroy'

end
