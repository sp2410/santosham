json.extract! post, :id, :title, :resource, :type, :created_at, :updated_at
json.url post_url(post, format: :json)
