class AddAmountToCartItems < ActiveRecord::Migration[7.0]
  def change
    add_column :cart_items, :amount, :float
  end
end
