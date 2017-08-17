class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.boolean :status
      t.date :start_date
      t.date :end_date
      t.references :plant, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
