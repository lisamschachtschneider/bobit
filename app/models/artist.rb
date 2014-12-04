class Artist < ActiveRecord::Base
  has_many :songs, as: :audioable
end
