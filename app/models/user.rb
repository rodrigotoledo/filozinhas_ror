# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :carts, dependent: :destroy
  has_many :cart_items, through: :carts

  def current_cart
    return if @current_cart

    cart = carts.last
    @current_cart ||= (cart || carts.incomplete.build)
  end
end
