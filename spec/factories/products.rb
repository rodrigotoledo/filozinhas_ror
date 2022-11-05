FactoryBot.define do
  factory :product do
    category { nil }
    title { "MyString" }
    description { "MyText" }
    price { 1.5 }
    promotional_price { 1.5 }
  end
end
