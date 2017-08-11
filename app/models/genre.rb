class Genre < ApplicationRecord
	has_many :songs
  validates :name, presence: true, length: { maximum: 20 }
end
