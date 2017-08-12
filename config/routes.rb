Rails.application.routes.draw do
  resources :tiles
  resources :maps
  root to: 'game#menu'

  get '/map', to: 'game#map'

  get '/encounter', to: 'game#encounter'

  resources :familiars
  resources :moves
  resources :base_familiars
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
