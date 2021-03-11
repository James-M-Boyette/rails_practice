class AddSupplierIdToSuppliers < ActiveRecord::Migration[6.1]
  def change
    add_column :suppliers, :supplier_id, :string
  end
end
