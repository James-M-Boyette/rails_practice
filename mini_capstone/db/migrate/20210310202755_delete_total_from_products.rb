class DeleteTotalFromProducts < ActiveRecord::Migration[6.1]
  def change
    remove_column :products, :total
  end
end
