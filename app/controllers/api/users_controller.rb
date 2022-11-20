# frozen_string_literal: true

module Api
  class UsersController < ApplicationController
    def signin
      if true
        render json: { token: 'asdasdasdasd' }
      else
        render json: false, status: :unauthorized
      end
    end

    protected

    def user_params
      params.require(:user).permit(:email, :password)
    end
  end
end
