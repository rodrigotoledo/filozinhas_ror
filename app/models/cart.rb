# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_items, dependent: :destroy
  enum status: { incomplete: 0, waiting_payment: 1, on_delivery: 2 }
  enum delivery_mode: { pick_on_store: 0, delivery_in_city: 1, shipping: 2 }
  enum delivery_status: { waiting_client: 0, with_client: 1, returned: 2 }

  def quantity
    @quantity ||= cart_items.sum(:product_variant_quantity)
  end

  def amount
    @amount ||= ActionController::Base.helpers.number_to_currency(cart_items.sum(:amount))
  end
end
