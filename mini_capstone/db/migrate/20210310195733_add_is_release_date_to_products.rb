class AddIsReleaseDateToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :release_date, :string
  end
end
