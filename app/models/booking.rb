class Booking < ApplicationRecord
  belongs_to :lair
  belongs_to :user

  validates :check_in, presence: true
  validates :check_out, presence: true
  validates :rating, allow_nil: true, numericality: { only_integer: true, in: 0..5 }

  validate :check_out_after_check_in

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    begin
      if check_out <= check_in
        errors.add(:check_out, "must be after the check-in date")
      end
    rescue ArgumentError
      errors.add(:base, "Invalid date format for check-in or check-out")
    end
  end
end
