json.extract! test_post, :id, :title, :desc, :created_at, :updated_at
json.url test_post_url(test_post, format: :json)
