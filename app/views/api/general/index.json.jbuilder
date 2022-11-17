# frozen_string_literal: true

json.extract! @general_data, :categories, :products
json.categories @general_data.categories do |category|
  json.partial! partial: 'api/categories/category', as: :category,
                locals: { category: }
end

json.products @general_data.products do |product|
  json.partial! partial: 'api/products/product', as: :product,
                locals: { product: }
end
