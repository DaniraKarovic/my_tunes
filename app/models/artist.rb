class Artist < ApplicationRecord
	belongs_to :user
	has_many :albums
  validates :name, presence: true, length: { maximum: 20 }
end
