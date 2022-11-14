# frozen_string_literal: true

module Api
  class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    protected

    def current_user
      @current_user ||= User.first
    end

    def current_cart
      @current_cart ||= current_user.current_cart
    end
  end
end
