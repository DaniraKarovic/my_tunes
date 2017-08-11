class Artist < ApplicationRecord
	has_many :albums
  validates :name, presence: true, length: { maximum: 20 }
end
