class Booking < ApplicationRecord
  belongs_to :lair
  belongs_to :user

  validates :check_in, presence: true
  validates :check_out, presence: true

  validate :check_out_after_check_in

  def check_out_after_check_in
    return if check_out.blank? || check_in.blank?

    begin
      check_in = Date.parse(check_in.to_s)
      check_out = Date.parse(check_out.to_s)

    if check_out <= check_in
      errors.add(:check_out, "must be after the check-in date")
    end
  end
end
