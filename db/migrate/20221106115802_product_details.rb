class ProductDetails < ActiveRecord::Migration[7.0]
  def up
    add_column :products, :ratings, :integer, default: 0
    drop_table :product_variants
    create_table :product_variants do |t|
      t.references :product
      t.string :label, null: false
      t.string :variant, null: false
    end
  end

  def down
    remove_column :products, :ratings
    drop_table :product_variants
    create_table :product_variants
  end
end
