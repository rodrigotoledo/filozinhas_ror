class CartItem < ApplicationRecord
  # scope :with_, -> { where(:attibute => value)}
  # Ex:- scope :active, -> {where(:active => true)}
  belongs_to :cart
  belongs_to :product
  belongs_to :product_variant
  before_save :set_amount

  protected

  def set_amount
    self.amount = product.final_price
  end
end
