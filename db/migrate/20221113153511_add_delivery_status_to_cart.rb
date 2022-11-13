class AddDeliveryStatusToCart < ActiveRecord::Migration[7.0]
  def change
    add_column :carts, :delivery_status, :string
  end
end
