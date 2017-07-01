class Player < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  has_many :pokemons
  
  def self.at(x, y)
    where(x_pos: x, y_pos: y)
  end
  
  def self.players_map(map)
    map = Array.new(map.length) { Array.new(map.first.length) }
    all.each do |player|
      map[player.y_pos][player.x_pos] = player
    end
    map
  end
end
