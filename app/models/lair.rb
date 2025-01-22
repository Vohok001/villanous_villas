class Lair < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :users, through: :bookings
  validates :rating, numericality: { in: 0..5}
end
