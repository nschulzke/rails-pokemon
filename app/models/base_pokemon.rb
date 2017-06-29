class BasePokemon < ApplicationRecord
  has_and_belongs_to_many :moves
end
