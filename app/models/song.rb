class Song < ApplicationRecord
  belongs_to :album
  belongs_to :genre
  belongs_to :user

  has_many :playlist_songs

  validates :name, presence: true, length: { maximum: 20 }
	validates :duration, presence: true, length: { maximum: 10 }
  validates :youtubelink, presence: true, length: { maximum: 50 }
end
