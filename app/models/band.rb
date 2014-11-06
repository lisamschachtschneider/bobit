class Band < ActiveRecord::Base
  has_and_belongs_to_many :songs
  accepts_nested_attributes_for :songs, allow_destroy: true
  validates :name, :description, presence: true
end
