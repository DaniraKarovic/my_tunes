class Album < ApplicationRecord
  belongs_to :artist

  has_many :songs

  validates :name, presence: true, length: { maximum: 20 }
  validates :year, presence: true, numericality: true
end
