class CelineversionsController < ApplicationController
  def index
    @celineversions = Celineversion.all
  end

  def show
    @celineversion = Celineversion.find(params[:id])
  end

  def new
    @celineversion = Celineversion.new
  end

  def create
    @user = current_user
    @celineversion = Celineversion.new(celineversion_params)
    @celineversion.user = @user
    if @celineversion.save
      redirect_to my_celineversions_path
    else
      render 'new'
    end
  end

  private

  def celineversion_params
    params.require(:celineversion).permit(:name, :description, :price, :image)
  end
end
