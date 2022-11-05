class Product < ApplicationRecord
  scope :with_discount, -> { where.not(promotional_price: nil) }
  belongs_to :category
  has_one_attached :image
  validates :title, :description, :price, presence: true
end
