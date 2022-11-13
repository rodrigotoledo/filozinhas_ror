# frozen_string_literal: true

module Api
  class CartsController < Api::ApplicationController
    before_action :set_cart, only: %i[show edit update destroy]

    # GET /carts or /carts.json
    def index
      @carts = current_user.carts.all
    end

    # GET /carts/1 or /carts/1.json
    def show; end

    def current; end

    # GET /carts/new
    def new
      @cart = current_user.carts.build
    end

    # GET /carts/1/edit
    def edit; end

    # POST /carts or /carts.json
    def create
      @cart = carts.build(cart_params)

      if @cart.save
        render status: :created, json: @cart
      else
        render json: @cart.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /carts/1 or /carts/1.json
    def update
      if @cart.update(cart_params)
        render status: :ok, json: @cart
      else
        render json: @cart.errors, status: :unprocessable_entity
      end
    end

    # DELETE /carts/1 or /carts/1.json
    def destroy
      @cart.destroy
      head :no_content
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = current_user.carts.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cart_params
      params.require(:cart).permit(:delivery_mode, :status, :address, :responsibles, :additional_info,
                                   :receive_at_start, :receive_at_end)
    end
  end
end
