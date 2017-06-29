json.extract! player, :id, :name, :gender, :x_pos, :y_pos, :background, :created_at, :updated_at
json.url player_url(player, format: :json)
