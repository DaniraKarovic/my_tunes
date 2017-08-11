class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true, length: { maximum: 20 }
	validates :duration, presence: true, length: { maximum: 10 }
end
