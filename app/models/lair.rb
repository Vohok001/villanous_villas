class Lair < ApplicationRecord
  belongs_to :user
  has_many :users, through: :bookings
  validates :rating, allow_nil: true, numericality: { only_integer: true, in: 0..5 }
end
