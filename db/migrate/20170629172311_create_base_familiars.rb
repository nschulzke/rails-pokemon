class CreateBaseFamiliars < ActiveRecord::Migration[5.0]
  def change
    create_table :base_familiars do |t|
      t.string :name
      t.integer :health
      t.integer :power
      t.integer :element
      t.string :background

      t.timestamps
    end
  end
end
