class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product
  belongs_to :product_variant
  before_save :set_amount

  protected

  def set_amount
    self.amount = product_variant_quantity <= 0 ? (product.final_price * -1) : product.final_price
  end
end
