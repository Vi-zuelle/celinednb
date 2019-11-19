class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @celineversion = Celineversion.find(params[:celieversion_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.celineversion = @celineversion
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
