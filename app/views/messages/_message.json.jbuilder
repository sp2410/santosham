json.extract! message, :id, :subject, :question, :type, :created_at, :updated_at
json.url message_url(message, format: :json)
