class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :delivery_mode
      t.string :status
      t.string :address
      t.string :responsibles
      t.text :additional_info
      t.datetime :receive_at_start
      t.datetime :receive_at_end

      t.timestamps
    end
  end
end
