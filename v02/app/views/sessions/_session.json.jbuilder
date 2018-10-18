json.extract! session, :id, :topic, :description, :event_id, :speaker_id, :created_at, :updated_at
json.url session_url(session, format: :json)
