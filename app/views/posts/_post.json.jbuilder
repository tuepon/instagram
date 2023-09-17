json.extract! post, :id, :caption, :longitude, :lattitude, :user_id, :allow_commnents, :show_likes_count, :created_at, :updated_at
json.url post_url(post, format: :json)
