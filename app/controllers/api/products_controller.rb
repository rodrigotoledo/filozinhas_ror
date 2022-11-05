class Api::ProductsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_product, only: %i[ show  ]

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products or /products.json
  def with_discount
    @products = Product.with_discount
  end

  def by_category
    @category = Category.friendly.find(params[:category_id])
  end

  # GET /products/1 or /products/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.friendly.find(params[:id])
    end
end