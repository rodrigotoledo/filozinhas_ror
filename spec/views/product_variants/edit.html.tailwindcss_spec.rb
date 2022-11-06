require 'rails_helper'

RSpec.describe "product_variants/edit", type: :view do
  let(:product_variant) {
    ProductVariant.create!(
      product: nil,
      label: "MyString",
      quantity: 1
    )
  }

  before(:each) do
    assign(:product_variant, product_variant)
  end

  it "renders the edit product_variant form" do
    render

    assert_select "form[action=?][method=?]", product_variant_path(product_variant), "post" do

      assert_select "input[name=?]", "product_variant[product_id]"

      assert_select "input[name=?]", "product_variant[label]"

      assert_select "input[name=?]", "product_variant[quantity]"
    end
  end
end
