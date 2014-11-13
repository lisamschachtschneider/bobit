class Song < ActiveRecord::Base
  has_and_belongs_to_many :bands
  belongs_to :playlist
  accepts_nested_attributes_for :bands, allow_destroy: true
  mount_uploader :file, SongUploader
  validates :file, :title, presence: true

  def song_by_name
    " #{title} #{artist} "
  end
end
