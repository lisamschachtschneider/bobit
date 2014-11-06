class Song < ActiveRecord::Base
  has_and_belongs_to_many :bands
  accepts_nested_attributes_for :bands, allow_destroy: true
  mount_uploader :file, SongUploader
  validates :file, :title, presence: true
end
