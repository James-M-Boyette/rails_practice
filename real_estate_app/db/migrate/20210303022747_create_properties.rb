class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :description
      t.integer :year_built
      t.integer :square_feet
      t.integer :bedrooms
      t.string :bathrooms
      t.string :integer
      t.integer :floors
      t.string :availability
      t.string :address
      t.integer :price

      t.timestamps
    end
  end
end
