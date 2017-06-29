class Pokemon < ApplicationRecord
  belongs_to :player
  belongs_to :base_pokemon
end
