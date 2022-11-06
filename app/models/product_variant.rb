class ProductVariant < ApplicationRecord
  belongs_to :product, required: false
end
