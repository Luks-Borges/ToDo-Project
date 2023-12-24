json.extract! user, :id, :name, :country, :status, :url_image, :created_at, :updated_at
json.url user_url(user, format: :json)
