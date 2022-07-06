json.extract! newletter, :id, :first_name, :last_name, :email, :created_at, :updated_at
json.url newletter_url(newletter, format: :json)
