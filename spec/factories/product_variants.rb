FactoryBot.define do
  factory :product_variant do
    product { nil }
    label { "MyString" }
    quantity { 1 }
  end
end
