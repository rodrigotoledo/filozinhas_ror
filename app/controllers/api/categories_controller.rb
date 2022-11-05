class Api::CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = Category.all
  end

  def featured
    @categories = Category.featureds
  end

  # GET /categories/1 or /categories/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.friendly.find(params[:id])
    end
end
