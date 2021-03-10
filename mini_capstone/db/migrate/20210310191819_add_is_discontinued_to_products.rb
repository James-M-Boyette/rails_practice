class AddIsDiscontinuedToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :is_discontinued, :boolean
  end
end
