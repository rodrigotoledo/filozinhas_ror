json.extract! product, :id, :category_id, :title, :image, :description, :slug, :price, :promotional_price, :created_at, :updated_at
if product.image.attached?
  json.image Rails.application.routes.url_helpers.rails_blob_url(product.image)
end
