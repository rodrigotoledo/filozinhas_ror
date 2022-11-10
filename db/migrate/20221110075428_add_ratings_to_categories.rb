class AddRatingsToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :ratings, :integer, default: 0
  end
end
