class StopsController < ApplicationController
  def index
    @stops = Stop.all
  end

  def new
    @stop = Stop.new
  end

  def create
    @stop = Stop.create(user_params)
    if @stop.valid?
      flash[:notice] = "Stop created"
      redirect_to stops_path
    else
      render 'new'
    end
  end

  def show
    @stop = Stop.find(params[:id])
  end

  def edit
    @stop = Stop.find(params[:id])
  end

  def update
    @stop = Stop.find(params[:id])
    if @stop.update(user_params)
      flash[:notice] = "Stop has been updated"
      redirect_to stop_path(@stop)
    else
      render 'edit'
    end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.delete
    flash[:notice] = "Stop Destroyed"
    redirect_to stops_path
  end

  private
  def user_params
    params.require(:stop).permit(:station_id, :line_id)
    end
end
