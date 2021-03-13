class AddSongIdToSongs < ActiveRecord::Migration[6.1]
  def change
    add_column :songs, :song_id, :integer
  end
end
