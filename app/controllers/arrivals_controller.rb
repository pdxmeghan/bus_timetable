class ArrivalsController < ApplicationController
  def index
    @arrivals = Arrival.all
  end

  def new
    @arrival = Arrival.new
  end

  def create
    @arrival = Arrival.create(user_params)
    if @bus.valid?
      flash[:notice] = "New Arrival Added"
      redirect_to arrival_path
    else
      render 'new'
    end
  end
end
