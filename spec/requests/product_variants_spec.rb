require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/product_variants", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # ProductVariant. As you add validations to ProductVariant, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ProductVariant.create! valid_attributes
      get product_variants_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      product_variant = ProductVariant.create! valid_attributes
      get product_variant_url(product_variant)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_product_variant_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      product_variant = ProductVariant.create! valid_attributes
      get edit_product_variant_url(product_variant)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ProductVariant" do
        expect {
          post product_variants_url, params: { product_variant: valid_attributes }
        }.to change(ProductVariant, :count).by(1)
      end

      it "redirects to the created product_variant" do
        post product_variants_url, params: { product_variant: valid_attributes }
        expect(response).to redirect_to(product_variant_url(ProductVariant.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ProductVariant" do
        expect {
          post product_variants_url, params: { product_variant: invalid_attributes }
        }.to change(ProductVariant, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post product_variants_url, params: { product_variant: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested product_variant" do
        product_variant = ProductVariant.create! valid_attributes
        patch product_variant_url(product_variant), params: { product_variant: new_attributes }
        product_variant.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the product_variant" do
        product_variant = ProductVariant.create! valid_attributes
        patch product_variant_url(product_variant), params: { product_variant: new_attributes }
        product_variant.reload
        expect(response).to redirect_to(product_variant_url(product_variant))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        product_variant = ProductVariant.create! valid_attributes
        patch product_variant_url(product_variant), params: { product_variant: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested product_variant" do
      product_variant = ProductVariant.create! valid_attributes
      expect {
        delete product_variant_url(product_variant)
      }.to change(ProductVariant, :count).by(-1)
    end

    it "redirects to the product_variants list" do
      product_variant = ProductVariant.create! valid_attributes
      delete product_variant_url(product_variant)
      expect(response).to redirect_to(product_variants_url)
    end
  end
end
