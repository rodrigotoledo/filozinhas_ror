FactoryBot.define do
  factory :cart_item do
    cart { nil }
    product { nil }
    product_variant { nil }
    product_variant_quantity { 1 }
  end
end
