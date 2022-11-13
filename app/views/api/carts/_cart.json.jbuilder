json.extract! cart, :id, :user_id, :delivery_mode, :status, :address, :responsibles, :additional_info,
              :receive_at_start, :receive_at_end, :delivery_status, :created_at, :updated_at
json.products cart.cart_items, partial: 'api/cart_items/cart_item', as: :cart_item
