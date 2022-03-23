class Booking < ApplicationRecord
  belongs_to :room

  validates :guest_number, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :arrival, :departure, presence: true

  before_save :set_night_number, :set_total_price

  private

  def set_night_number
    self.night_number = (departure - arrival).to_i
  end

  def set_total_price
    self.total_price = night_number * room.daily_price
  end
end
