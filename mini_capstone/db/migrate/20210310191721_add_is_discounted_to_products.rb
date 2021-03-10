class AddIsDiscountedToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :is_discounted, :boolean
  end
end
