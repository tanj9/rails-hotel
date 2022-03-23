class BookingsController < ApplicationController
  def index
    @bookings = Booking.order(:arrival)
  end

  def create
    @booking = Booking.new(booking_params)
    @room = Room.find(params[:room_id])
    @booking.room = @room
    @hotel = @room.hotel
    if @booking.save
      redirect_to hotel_room_booking_path(@hotel, @room, @booking)
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival, :departure, :guest_number)
  end
end
