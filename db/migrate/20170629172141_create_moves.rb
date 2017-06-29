class CreateMoves < ActiveRecord::Migration[5.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :element
      t.integer :damage
      t.integer :cost

      t.timestamps
    end
  end
end
