class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :chef
      t.string :image_url
      t.decimal :prep_time
      t.string :ingredients
      t.string :directions

      t.timestamps
    end
  end
end
