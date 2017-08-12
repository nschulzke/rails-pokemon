class Map < ApplicationRecord
  serialize :map
  has_many :players
  validates_presence_of :name, :map

  after_validation do
    if map
      unless map.all? { |row| row.is_a?(Array) } and map.map(&:size).uniq.size == 1
        errors.add(:map, "must be a 2d array")
      end
    end
  end

  def self.create_blank(name: "Default", width: 10, height: 10, tile: Tile.passable.first)
    map = Array.new(height) { Array.new(width) { tile.id } }
    Map.create(name: name, map: map)
  end

  def passable? x_pos, y_pos
    return tiles[y_pos][x_pos].passable?
  end

  def wall(tile: Tile.not_passable.first)
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

  def tiles
    @tiles ||= build_tiles
  end

  def players_map
    players_map = Array.new(map.length) { Array.new(map.first.length) }
    players.each do |player|
      players_map[player.y_pos][player.x_pos] = player
    end
    players_map
  end

  private
    def build_tiles_hash
      tile_ids = Array.new
      map.each do |row|
        row.each do |tile_id|
          tile_ids.push(tile_id)
        end
      end
      tiles_hash = Hash.new
      Tile.find(tile_ids).each do |tile|
        tiles_hash[tile.id] = tile
      end
      tiles_hash
    end

    def build_tiles
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
