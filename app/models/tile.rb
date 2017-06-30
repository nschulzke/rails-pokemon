class Tile < ApplicationRecord
  def self.passable
    where(passable: true)
  end

  def self.not_passable
    where(passable: false)
  end
end
