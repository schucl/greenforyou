class RemoveStatusToBookings < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :status, :boolean
  end
end
