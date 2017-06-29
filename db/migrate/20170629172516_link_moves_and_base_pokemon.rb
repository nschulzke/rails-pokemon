class LinkMovesAndBasePokemon < ActiveRecord::Migration[5.0]
  def change
    create_table :base_pokemons_moves, id: false do |t|
      t.belongs_to :base_pokemon, index: true
      t.belongs_to :move, index: true
    end
  end
end
