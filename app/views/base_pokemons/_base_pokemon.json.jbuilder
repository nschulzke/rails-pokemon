json.extract! base_pokemon, :id, :name, :health, :power, :element, :background, :created_at, :updated_at
json.url base_pokemon_url(base_pokemon, format: :json)
