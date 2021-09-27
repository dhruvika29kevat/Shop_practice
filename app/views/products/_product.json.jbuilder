json.extract! product, :id, :name, :brand, :model, :description, :price, :condition, :created_at, :updated_at
json.url product_url(product, format: :json)
