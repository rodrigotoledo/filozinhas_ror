require 'active_support/concern'

module CartWithItems
  extend ActiveSupport::Concern
  def render_cart_with_items
    if current_cart.cart_items.blank?
      render json: false
    else
      render json: { cart: current_cart.as_json, cart_items: current_cart.cart_items.order(:product_id).as_json, quantity: current_cart.cart_items.count,
                     amount: ActionController::Base.helpers.number_to_currency(current_cart.cart_items.sum(:amount)) }, status: :ok
    end
  end
end
