class ChangeColumnTypeInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :check_in, :date, using: 'check_in::date'
    change_column :bookings, :check_out, :date, using: 'check_out::date'
  end
end
