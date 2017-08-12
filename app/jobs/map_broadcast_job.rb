class MapBroadcastJob < ApplicationJob
  def perform map
    MapChannel.broadcast_to map, players: map.players
  end
end
