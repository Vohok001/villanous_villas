class Lair < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :location, presence: true
  validates :rating, allow_nil: true, numericality: { only_integer: true, in: 0..5 }
  validates :max_guests, numericality: { only_integer: true, greater_than: 0 }
  validates :price_per_night, numericality: { greater_than: 0 }
end
