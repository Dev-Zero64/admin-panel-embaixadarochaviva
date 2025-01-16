json.extract! news, :id, :title, :description, :picture, :display_date, :iso_date, :created_at, :updated_at
json.url news_url(news, format: :json)
