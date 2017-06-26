json.extract! newsletter_user, :id, :email, :created_at, :updated_at
json.url newsletter_user_url(newsletter_user, format: :json)
