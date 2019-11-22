class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @celineversion = Celineversion.find(params[:celineversion_id])
    @booking = Booking.new
  end

  def create
    @celineversion = Celineversion.find(params[:celineversion_id])
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


  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to my_celineversions_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
