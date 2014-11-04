class Band < ActiveRecord::Base
has_and_belongs_to_many :songs
validates :name, :description, presence: true
end
