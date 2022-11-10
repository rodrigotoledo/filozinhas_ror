json.extract! category, :id, :title, :short_description, :image, :ratings, :featured, :slug, :created_at, :updated_at
json.image Rails.application.routes.url_helpers.rails_blob_url(category.image) if category.image.attached?
json.products category.products, partial: 'api/products/product', as: :product
