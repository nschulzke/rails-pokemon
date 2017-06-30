Rails.application.routes.draw do
  resources :tiles
  resources :maps
  root to: 'game#menu'

  get '/map', to: 'game#map'

  get '/encounter', to: 'game#encounter'

  resources :pokemons
  resources :moves
  resources :base_pokemons
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
