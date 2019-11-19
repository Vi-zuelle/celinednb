class CelineversionsController < ApplicationController
    def index
    @celineversion = Celineversions.all
  end
  def show
    @celineversion = Celineversion.find(params[:id])
  end
  def new
    @celineversion = Celineversion.new
  end
  def create
    @celineversion = Celineversion.new(celineversion_params)
    if @celineversion.save
      redirect_to celineversion_path(@celineversion)
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:celineversion).permit(:start_date, :end_date, :status)
  end
end


