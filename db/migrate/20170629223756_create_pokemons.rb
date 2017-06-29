class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.string :nickname
      t.belongs_to :player, foreign_key: true
      t.belongs_to :base_pokemon, foreign_key: true
      t.integer :status
      t.integer :health
      t.integer :power

      t.timestamps
    end
  end
end
