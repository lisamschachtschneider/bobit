class Song < ActiveRecord::Base
  mount_uploader :file, SongUploader
  validates :file, presence: true
  validates :title, :artist, presence: true, length: { minimum: 1 }
end
