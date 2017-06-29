class Move < ApplicationRecord
  include HasElement
  has_and_belongs_to_many :base_pokemons
end
