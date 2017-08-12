class Tile < ApplicationRecord
  validates_presence_of :name

  after_initialize :set_defaults, unless: :persisted?

  def self.passable
    where(passable: true)
  end

  def self.not_passable
    where(passable: false)
  end

  private
    def set_defaults
      self.background ||= 'black'
      self.passable ||= true
    end
end
