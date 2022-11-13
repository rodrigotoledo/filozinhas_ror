json.extract! cart_item, :id, :cart_id, :product_id, :product_variant_id, :product_variant_quantity, :created_at, :updated_at
json.url cart_item_url(cart_item, format: :json)
