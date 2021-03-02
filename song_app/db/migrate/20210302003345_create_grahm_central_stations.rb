class CreateGrahmCentralStations < ActiveRecord::Migration[6.1]
  def change
    create_table :grahm_central_stations do |t|
      t.string :artist
      t.string :album_title
      t.string :song
      t.integer :populatiry

      t.timestamps
    end
  end
end
