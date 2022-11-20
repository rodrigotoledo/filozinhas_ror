# frozen_string_literal: true

module Api
  class CartItemsController < ApplicationController
    before_action :authenticate_user!
    include CartWithItems
    # GET /cart_items or /cart_items.json
    def index
      @cart_items = current_cart.cart_items
    end

    # POST /upgrade or /upgrade.json
    def upgrade
      @cart_item = current_cart.cart_items.build(cart_item_params)
      if @cart_item.save
        render_cart_with_items
      else
        render json: @cart_item.errors, status: :unprocessable_entity
      end
    end

    # POST /downgrade or /downgrade.json
    def downgrade
      current_cart.cart_items.where(product_id: params[:product_id],
                                    product_variant_id: params[:product_variant_id]).last.try(:destroy)
      render_cart_with_items
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = current_cart.cart_items.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_item_params
      params.require(:cart_item).permit(:product_id, :product_variant_id, :product_variant_quantity)
    end
  end
end
