class Playlist < ApplicationRecord
	belongs_to :user
	has_many :playlist_songs

	validates :name, presence: true, length: { maximum: 20 }
end
