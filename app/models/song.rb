class Song < ActiveRecord::Base
  belongs_to :audioable, polymorphic: true
  has_and_belongs_to_many :playlists
  mount_uploader :file, SongUploader
#  validates :file, :title, presence: true

  def song_by_title
    " #{title} "
  end

#  def song_without_playlist
#    Song.find(:all, :include => :playlists, :conditions => { "playlists_songs.song_id" => nil })
#  end
end
