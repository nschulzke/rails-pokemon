class Map < ApplicationRecord
  serialize :map

  def self.blank(width: 10, height: 10)
    default_tile = Tile.passable.first
    Array.new(height) { Array.new(width) { default_tile.id } }
  end

  def wall(tile = Tile.not_passable.first)
    map.first.map! { tile.id }
    map.last.map! { tile.id }

    map.each do |row|
      row[0] = tile.id
      row[-1] = tile.id
    end
    save
  end

  def tile tile_id
    tiles_hash[tile_id]
  end

  def map_tiles
    @map_tiles ||= build_map_tiles
  end

  private
    def build_tiles_hash
      tiles_hash = Hash.new
      map.each do |row|
        row.each do |tile_id|
          tiles_hash[tile_id] ||= Tile.find(tile_id)
        end
      end
      tiles_hash
    end

    def build_map_tiles
      map_tiles = Array.new(map.length) { Array.new(map.first.length) }
      map.each_with_index do |row, row_num|
        row.each_with_index do |tile_id, col_num|
          map_tiles[row_num][col_num] = tile(tile_id)
        end
      end
      map_tiles
    end

    def tiles_hash
      @tiles_hash ||= build_tiles_hash
    end
end
