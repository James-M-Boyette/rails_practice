class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :tiartist
      t.string :album_name
      t.string :song_title
      t.integer :popularity

      t.timestamps
    end
  end
end
