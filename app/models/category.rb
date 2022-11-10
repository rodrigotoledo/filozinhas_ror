class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  scope :featureds, -> { where(featured: true).joins(:products) }
  has_one_attached :image
  has_many :products, dependent: :destroy
  validates :title, :short_description, presence: true
end
