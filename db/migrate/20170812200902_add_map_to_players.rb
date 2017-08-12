class AddMapToPlayers < ActiveRecord::Migration[5.0]
  def change
    add_reference :players, :map, foreign_key: true
  end
end
