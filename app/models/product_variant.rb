class ProductVariant < ApplicationRecord
  belongs_to :product
  validates :label, :variant, presence: true
  def name
    ["##{id}", "label (#{label})", "#{variant} qty"].join(' - ')
  end
end
