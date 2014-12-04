class CreatePlaylistsSongs < ActiveRecord::Migration
  def change
    create_table :playlists_songs do |t|
      t.belongs_to :song, index: true
      t.belongs_to :playlist, index: true
    end
  end
end
