class Pokemon < ApplicationRecord
  belongs_to :player
  belongs_to :base_pokemon
  
  enum status: { fainted: 0, inactive: 1, active: 2 }
  
  def nick_and_name
    "#{self.nickname} (#{self.base_pokemon.name})"
  end
end
