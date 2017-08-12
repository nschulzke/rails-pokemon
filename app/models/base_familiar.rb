class BaseFamiliar < ApplicationRecord
  include HasElement
  has_and_belongs_to_many :moves
end
