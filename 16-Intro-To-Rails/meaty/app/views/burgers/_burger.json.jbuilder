json.extract! burger, :id, :name, :meat, :tasty, :calories, :created_at, :updated_at
json.url burger_url(burger, format: :json)
