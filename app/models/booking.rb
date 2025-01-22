class Booking < ApplicationRecord
  belongs_to :lair
  belongs_to :user

  validates :check_in, presence: true
  validates :check_out, presence: true

  validate :check_out_after_check_in

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    begin
      parsed_check_in = Date.parse(check_in)
      parsed_check_out = Date.parse(check_out)

      if parsed_check_out <= parsed_check_in
        errors.add(:check_out, "must be after the check-in date")
      end
    rescue ArgumentError
      errors.add(:base, "Invalid date format for check-in or check-out")
    end
  end
end
