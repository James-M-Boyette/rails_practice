class AddProductIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :product_id, :string
  end
end
