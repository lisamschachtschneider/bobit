class Song < ActiveRecord::Base
  belongs_to :audioable, polymorphic: true
  has_and_belongs_to_many :playlists
  mount_uploader :file, SongUploader
  validates :file, :title, presence: true

  def song_by_name
    " #{title} #{artist} "
  end
end
