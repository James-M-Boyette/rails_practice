class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :album
      t.integer :artist_id
      t.string :image_url
      t.text :lyrics

      t.timestamps
    end
  end
end
