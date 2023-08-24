class BookingsController < ApplicationController
  before_action :set_user
  before_action :set_instrument, only: [:new, :create]

  def new
    @booking = Booking.new
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def create
    booking = Booking.new(booking_params)
    booking.user = @user
    booking.instrument = @instrument
    if booking.save
      redirect_to booking_confirmation_path
    else
      render :new
    end
  end

   def booking_confirmation
   end

   private
   def set_instrument
    @instrument = Instrument.find(params[:instrument_id])
   end

  def set_user
    if user_signed_in?
      @user = current_user
    end
  end

   def booking_params
     params.require(:booking).permit(:start_date, :end_date , :instrument_id)
   end
end
