class Move < ApplicationRecord
  include HasElement
  has_and_belongs_to_many :pokemons
end
