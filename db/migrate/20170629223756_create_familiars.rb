class CreateFamiliars < ActiveRecord::Migration[5.0]
  def change
    create_table :familiars do |t|
      t.string :nickname
      t.belongs_to :player, foreign_key: true
      t.belongs_to :base_familiar, foreign_key: true
      t.integer :status
      t.integer :health
      t.integer :power

      t.timestamps
    end
  end
end
