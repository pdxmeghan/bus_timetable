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

  private
  def user_params
    params.require(:stop).permit(:station_id, :line_id)
    end
end
