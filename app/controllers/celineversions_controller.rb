class CelineversionsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @celineversions = Celineversion.where(sql_query, query: "%#{params[:query]}%")
    else
      @celineversions = Celineversion.all
    end
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

  def edit
    @celineversion = Celineversion.find(params[:id])
  end

  def update
    @celineversion = Celineversion.find(params[:id])
    @celineversion.update(celineversion_params)

    redirect_to celineversion_path(@celineversion)
  end

  def destroy
    @celineversion = Celineversion.find(params[:id])
    @celineversion.destroy

    redirect_to my_celineversions_path
  end

  private

  def celineversion_params
    params.require(:celineversion).permit(:name, :description, :price, :image)
  end
end
