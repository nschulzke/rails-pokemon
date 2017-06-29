module HasElement
  extend ActiveSupport::Concern
  
  included do
    enum element: { fire: 0, earth: 1, air: 2, water: 3 }
  end
end