class Pokemon < ApplicationRecord
  belongs_to :player
  belongs_to :base_pokemon
  
  def nick_and_name
    "#{self.nickname} (#{self.base_pokemon.name})"
  end
end
