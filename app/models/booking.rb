class Booking < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :status, presence: true, acceptance:  { accept: ["accepted", "declined", "pending"] }
  validates :start_date, :end_date, presence: true
end
