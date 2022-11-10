json.extract! product, :id, :category_id, :title, :image, :description, :slug, :price, :promotional_price, :ratings,
              :product_variants, :product_images, :created_at, :updated_at
json.image Rails.application.routes.url_helpers.rails_blob_url(product.image) if product.image.attached?
json.product_variants product.product_variants do |product_variant|
  json.partial! partial: 'api/product_variants/product_variant', as: :product_variant,
                locals: { product_variant: product_variant }
end

json.product_images product.product_images do |product_image|
  json.partial! partial: 'api/product_images/product_image', as: :product_image,
                locals: { product_image: product_image }
end
