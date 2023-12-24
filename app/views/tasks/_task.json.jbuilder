json.extract! task, :id, :name, :url_image, :description, :created_at, :updated_at
json.url task_url(task, format: :json)
