class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # Owned lairs
  has_many :lairs, foreign_key: :owner_id, class_name: "Lair"

  # Rented lairs
  has_many :bookings
  has_many :rented_lairs, through: :bookings, source: :lair

  # has_many :lairs, dependent: :destroy, class_name: "Lair"
  # has_many :bookings
  # has_many :lairs, through: :bookings, source: :lair
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
