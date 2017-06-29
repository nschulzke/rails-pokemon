class Move < ApplicationRecord
  include HasElement
  has_and_belongs_to_many :base_pokemons
  
  def name_and_element
    "#{self.name} (#{self.element})"
  end
end
