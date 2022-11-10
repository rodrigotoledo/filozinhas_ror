class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  scope :with_discount, -> { where.not(promotional_price: nil) }
  belongs_to :category
  has_many :product_variants, dependent: :destroy
  has_many :product_images, dependent: :destroy
  has_one_attached :image
  validates :title, :description, :price, presence: true
end
