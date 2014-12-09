class Song < ActiveRecord::Base
  belongs_to :audioable, polymorphic: true
  has_and_belongs_to_many :playlists
  mount_uploader :file, SongUploader

  def song_by_title_and_name
    " #{title} #{audioable.name}"
  end

  def artist
    @song.artists
  end

  def song
    @song = @song.audioable
  end

  def songs_by_artist
    @song.artist
  end

  def songs_on_playlist
    @song.playlist
  end
end
