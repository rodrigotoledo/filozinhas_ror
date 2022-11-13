json.extract! cart, :id, :user_id, :delivery_mode, :status, :address, :responsibles, :additional_info, :receive_at_start, :receive_at_end, :created_at, :updated_at
json.url cart_url(cart, format: :json)
