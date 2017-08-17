class ChangeTypeToBookings < ActiveRecord::Migration[5.1]
  def change
    def change
    add_column :bookings, :status, :string
    delete_column :bookings, :status, :boolean
  end
  end
end
