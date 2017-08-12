class LinkMovesAndBaseFamiliars < ActiveRecord::Migration[5.0]
  def change
    create_table :base_familiars_moves, id: false do |t|
      t.belongs_to :base_familiar, foreign_key: true
      t.belongs_to :move, foreign_key: true
    end
  end
end
