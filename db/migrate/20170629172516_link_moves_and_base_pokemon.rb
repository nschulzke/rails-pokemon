class LinkMovesAndBasePokemon < ActiveRecord::Migration[5.0]
  def change
    create_table :base_pokemons_moves, id: false do |t|
      t.belongs_to :base_pokemon, foreign_key: true
      t.belongs_to :move, foreign_key: true
    end
  end
end
