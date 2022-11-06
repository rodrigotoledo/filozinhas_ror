require 'rails_helper'

RSpec.describe "product_variants/show", type: :view do
  before(:each) do
    assign(:product_variant, ProductVariant.create!(
      product: nil,
      label: "Label",
      quantity: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/2/)
  end
end
