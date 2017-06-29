class Player < ApplicationRecord
  enum gender: { male: 0, female: 0 }
end
