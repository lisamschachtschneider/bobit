class AddSongToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :song, :string
  end
end
