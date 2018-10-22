json.extract! npc, :id, :name, :description, :level, :defeated_by_char, :created_at, :updated_at
json.url npc_url(npc, format: :json)
