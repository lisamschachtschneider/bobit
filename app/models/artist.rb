class Artist < ActiveRecord::Base
  has_many :songs, as: :audioable
  accepts_nested_attributes_for :songs, allow_destroy: true
end
