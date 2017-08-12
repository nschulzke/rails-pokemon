class Map < ApplicationRecord
  serialize :map
  require_dependency "app/models/tile"

  def self.blank(width: 10, height: 10)
    default_tile = Tile.passable.first
    Array.new(height) { Array.new(width) { default_tile } }
  end

  def wall(tile = Tile.not_passable.first)
    map.first.map! { tile }
    map.last.map! { tile }

    map.each do |row|
      row[0] = tile
      row[-1] = tile
    end
    save
  end
end
