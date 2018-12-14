json.extract! post, :id, :title, :content, :email, :created_at, :updated_at
json.url post_url(post, format: :json)
