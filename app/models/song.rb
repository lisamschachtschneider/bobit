class Song < ActiveRecord::Base
  belongs_to :audioable, polymorphic: true
  mount_uploader :file, SongUploader
  validates :file, :title, presence: true

  def song_by_name
    " #{title} #{artist} "
  end
end
