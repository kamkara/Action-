json.extract! work, :id, :title, :content, :heroImg, :slug, :user_id, :created_at, :updated_at
json.url work_url(work, format: :json)
json.content work.content.to_s
