class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.create(user_params)
    if @station.valid?
      flash[:notice] = "Bus station added"
      redirect_to stations_path
    else
      render 'new'
    end
  end

  def show
    @station =Station.find(params[:id])
  end

  def edit
    @station = Station.find(params[:id])
  end

  def update
    @station = Station.find(params[:id])
    if @station.update(user_params)
      flash[:notice] = "Bus station updated"
      redirect_to station_path(@station)
    else
      render 'edit'
    end
  end

  def destroy
    @station = Station.find(params[:id])
    @station.delete
    flash[:notice] = "Your station has been destroyed"
    redirect_to stations_path
  end

  private
  def user_params
    params.require(:station).permit(:name)
  end
end
