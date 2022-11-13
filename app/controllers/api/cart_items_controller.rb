# frozen_string_literal: true

module Api
  class CartItemsController < ApplicationController
    before_action :set_cart_item, only: %i[show edit update destroy]

    # GET /cart_items or /cart_items.json
    def index
      @cart_items = current_cart.cart_items
    end

    # GET /cart_items/1 or /cart_items/1.json
    def show; end

    # GET /cart_items/new
    def new
      @cart_item = current_cart.cart_item.build
    end

    # GET /cart_items/1/edit
    def edit; end

    # POST /cart_items or /cart_items.json
    def create
      @cart_item = current_cart.cart_items.build(cart_item_params)

      if @cart_item.save
        render status: :created, json: @cart_item
      else
        render json: @cart_item.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /cart_items/1 or /cart_items/1.json
    def update
      if @cart_item.update(cart_item_params)
        render status: :ok, json: @cart_item
      else
        render json: @cart_item.errors, status: :unprocessable_entity
      end
    end

    # DELETE /cart_items/1 or /cart_items/1.json
    def destroy
      @cart_item.destroy
      head :no_content
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = current_cart.cart_items.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_item_params
      params.require(:cart_item).permit(:cart_id, :product_id, :product_variant_id, :product_variant_quantity)
    end
  end
end
