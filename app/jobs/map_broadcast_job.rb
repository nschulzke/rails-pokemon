class MapBroadcastJob < ApplicationJob
  def perform map
    MapChannel.broadcast_to map, players: Player.all
  end
end
