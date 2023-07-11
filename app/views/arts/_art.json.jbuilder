json.extract! art, :id, :user_id, :title, :year, :description, :category, :created_at, :updated_at
json.url art_url(art, format: :json)
