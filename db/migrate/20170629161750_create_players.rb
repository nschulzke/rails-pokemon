class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :gender
      t.integer :x_pos
      t.integer :y_pos
      t.string :background

      t.timestamps
    end
  end
end
