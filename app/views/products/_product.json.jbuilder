json.extract! product, :id, :category_id, :title, :description, :price, :promotional_price, :created_at, :updated_at
json.url product_url(product, format: :json)
