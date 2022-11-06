class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  scope :featureds, -> { where(featured: true).joins(:products) }
  has_one_attached :image
  has_many :products
  validates :title, presence: true
end
