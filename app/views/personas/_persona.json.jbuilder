json.extract! persona, :id, :nombre, :identificacion, :apartamento, :created_at, :updated_at
json.url persona_url(persona, format: :json)