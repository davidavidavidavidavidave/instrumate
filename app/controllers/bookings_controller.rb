class BookingsController < ApplicationController
  def index
    "@bookings = Bookings.all"
  end

  def new
    @instrument = Instrument.find(params[:instrument_id])
    @booking = Booking.new
  end

  # def create
  # booking = Booking.new(booking_params)
  # booking.user = current_user
  #   if booking.save
  #     redirect_to instrument_path(instrument)
  #   else
  #     render :new
  # end

  # private
  # def booking_params
  #   params.require(:booking).permit(:name, :type, :genre, :description, :price, :location)
  # end
end
