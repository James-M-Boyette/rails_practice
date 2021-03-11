class AddProductIdToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :product_id, :string
  end
end
