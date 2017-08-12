class MapChannel < ApplicationCable::Channel
  def subscribed
    stream_for Map.first
  end

  def move data
    Player.first.move data['direction'].to_sym
  end
end
