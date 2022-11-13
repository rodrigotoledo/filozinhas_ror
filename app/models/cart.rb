class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  enum status: %i[incomplete waiting_payment on_delivery]
  enum delivery_mode: %i[pick_on_store delivery_in_city shipping]
  enum delivery_status: %i[waiting_client with_client returned]
end
