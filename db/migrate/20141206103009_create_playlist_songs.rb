class CreatePlaylistSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs, id: false do |t|
      t.belongs_to :song
      t.belongs_to :playlist

      t.timestamps
    end
  end
end
