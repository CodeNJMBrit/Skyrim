json.extract! message, :id, :message, :character_id, :created_at, :updated_at
json.url message_url(message, format: :json)
