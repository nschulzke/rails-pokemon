class Map < ApplicationRecord
  serialize :map
  
  def self.blank(width: 10, height: 10)
    Array.new(height, Array.new(width, 0))
  end
end
