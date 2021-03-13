class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.integer :artist_id
      t.integer :song_id
      t.string :genre
      t.integer :genre_id

      t.timestamps
    end
  end
end
