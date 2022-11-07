json.extract! product, :id, :category_id, :title, :image, :description, :slug, :price, :promotional_price, :ratings, :product_variants, :created_at, :updated_at
if product.image.attached?
  json.image Rails.application.routes.url_helpers.rails_blob_url(product.image)
end
json.product_variants product.product_variants do |product_variant|
  json.partial! partial: 'api/product_variants/product_variant', as: :product_variant, locals: {product_variant: product_variant}
end