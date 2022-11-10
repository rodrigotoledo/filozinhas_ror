json.extract! product_image, :id, :product_id, :image, :description
json.image Rails.application.routes.url_helpers.rails_blob_url(product_image.image) if product_image.image.attached?
