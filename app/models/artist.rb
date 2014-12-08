class Artist < ActiveRecord::Base
  has_many :songs, as: :audioable

  def artist_songs
    @artist.songs
  end
end
