class ProductImage < ApplicationRecord
  belongs_to :product
  has_one_attached :image
  def name
    ["##{id}", "#{description}"].join(' - ')
  end
end
