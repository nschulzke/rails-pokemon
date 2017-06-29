module HasElement
  extend ActiveSupport::Concern
  
  included do
    enum element: { fire: 0, earth: 1, water: 2, leaf: 3, normal: 4 }
  end
end