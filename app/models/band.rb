class Band < ActiveRecord::Base
  has_many :songs, as: :audioable
  accepts_nested_attributes_for :songs, allow_destroy: true
  validates :name, :description, presence: true
end
