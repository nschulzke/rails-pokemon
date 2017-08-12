class Player < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  has_many :familiars
  belongs_to :map

  after_commit do
    MapBroadcastJob.perform_later Map.first
  end

  def self.at(x, y)
    where(x_pos: x, y_pos: y)
  end

  def self.players_map(map)
    map = Array.new(map.map.length) { Array.new(map.map.first.length) }
    all.each do |player|
      map[player.y_pos][player.x_pos] = player
    end
    map
  end

  def move direction
    case direction
    when :up
      update y_pos: y_pos - 1
    when :down
      update y_pos: y_pos + 1
    when :left
      update x_pos: x_pos - 1
    when :right
      update x_pos: x_pos + 1
    end
  end
end
