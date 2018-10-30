json.extract! hardware, :id, :name, :description, :category, :price, :currency, :created_at, :updated_at
json.url hardware_url(hardware, format: :json)
