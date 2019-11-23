json.extract! session, :id, :title, :completed, :created_at, :updated_at
json.url session_url(session, format: :json)
