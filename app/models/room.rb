class Room < ApplicationRecord
  belongs_to :hotel
  has_many :bookings, dependent: :destroy

  validates :room_number, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :daily_price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
