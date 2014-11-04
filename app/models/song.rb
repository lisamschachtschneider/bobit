class Song < ActiveRecord::Base
  has_and_belongs_to_many :bands
  mount_uploader :file, SongUploader
  validates :file, presence: true
  validates :title, :artist, presence: true
end
