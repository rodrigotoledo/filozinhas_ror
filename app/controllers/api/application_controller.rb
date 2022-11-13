# frozen_string_literal: true

module Api
  class ApplicationController < ActionController::Base
    protected

    def current_user
      @current_user ||= User.first
    end

    def current_cart
      @current_cart ||= current_user.carts.where(status: :incomplete).last
      return @current_cart if @current_cart.present?

      @current_cart ||= current_user.carts.incomplete.build
    end
  end
end
