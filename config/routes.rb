Rails.application.routes.draw do
  get 'game/menu'

  get 'game/map'

  get 'game/encounter'

  resources :pokemons
  resources :moves
  resources :base_pokemons
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
