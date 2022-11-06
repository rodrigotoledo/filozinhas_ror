class ProductVariant < ApplicationRecord
  belongs_to :product
  validates :label, :variant, presence: true
  def name
    ["ID##{id}: ", "label (#{label})", "variant (#{variant})"].join(' - ')
  end
end
