class StationsController < ApplicationController
  def index
    @stations = Station.all
  end

  def new
    @station = Station.new
    render
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

  private
  def user_params
    params.require(:station).permit(:name)
  end
end
