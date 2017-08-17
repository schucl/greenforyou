class Plant < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_attachment :photo
  validates :name, :description, :address, presence: true
  validates :category, presence: true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
