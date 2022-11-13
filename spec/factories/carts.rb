FactoryBot.define do
  factory :cart do
    user { nil }
    delivery_mode { "MyString" }
    status { "MyString" }
    address { "MyString" }
    responsibles { "MyString" }
    additional_info { "MyText" }
    receive_at_start { "2022-11-13 09:02:06" }
    receive_at_end { "2022-11-13 09:02:06" }
  end
end
