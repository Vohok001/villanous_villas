class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Owned lairs
  has_many :lairs, class_name: "Lair", dependent: :destroy

  # Rented lairs
  has_many :bookings
  has_many :rented_lairs, through: :bookings, source: :lair
end
