json.extract! product_variant, :id, :product_id, :label, :quantity, :created_at, :updated_at
json.url product_variant_url(product_variant, format: :json)
