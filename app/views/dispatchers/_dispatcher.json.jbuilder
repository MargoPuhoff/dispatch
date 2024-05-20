json.extract! dispatcher, :id, :name, :email, :phone, :password, :created_at, :updated_at
json.url dispatcher_url(dispatcher, format: :json)
