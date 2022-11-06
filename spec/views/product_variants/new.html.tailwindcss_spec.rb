require 'rails_helper'

RSpec.describe "product_variants/new", type: :view do
  before(:each) do
    assign(:product_variant, ProductVariant.new(
      product: nil,
      label: "MyString",
      quantity: 1
    ))
  end

  it "renders new product_variant form" do
    render

    assert_select "form[action=?][method=?]", product_variants_path, "post" do

      assert_select "input[name=?]", "product_variant[product_id]"

      assert_select "input[name=?]", "product_variant[label]"

      assert_select "input[name=?]", "product_variant[quantity]"
    end
  end
end
