json.extract! about, :id, :title, :heroImg, :content, :country, :donator, :projets, :published, :user_id, :created_at, :updated_at
json.url about_url(about, format: :json)
json.content about.content.to_s
