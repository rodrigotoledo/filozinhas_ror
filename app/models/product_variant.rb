class ProductVariant < ApplicationRecord
  belongs_to :product
  validates :label, :variant, presence: true
end
