json.extract! category, :id, :title, :image, :featured, :slug, :created_at, :updated_at
if category.image.attached?
  json.image Rails.application.routes.url_helpers.rails_blob_url(category.image)
end
json.products category.products, partial: 'api/products/product', as: :product