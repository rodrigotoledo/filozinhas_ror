class Api::GeneralController < Api::ApplicationController
  def index
    @general_data = GeneralData.new
    @general_data.categories = Category.limit(10).all
    @general_data.products = Product.limit(6).all
  end
end
