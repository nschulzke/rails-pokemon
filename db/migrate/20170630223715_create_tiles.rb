class CreateTiles < ActiveRecord::Migration[5.0]
  def change
    create_table :tiles do |t|
      t.string :name
      t.string :background
      t.boolean :passable

      t.timestamps
    end
  end
end
