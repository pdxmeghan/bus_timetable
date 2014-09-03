class ArrivalsController < ApplicationController
  def index
    @arrivals = Arrival.all
  end

  def new
    @arrival = Arrival.new
  end

  def create
    @arrival = Arrival.create(user_params)
    if @arrival.valid?
      flash[:notice] = "New Arrival Added"
      redirect_to arrival_path(@arrival)
    else
      render 'new'
    end
  end

  def show
    @arrival = Arrival.find(params[:id])
  end

  def edit
    @arrival = Arrival.find(params[:id])
  end

  def update
    @arrival = Arrival.find(params[:id])
    if @arrival.update(user_params)
      flash[:notice] = "Arrival updated"
      redirect_to arrival_path(@arrival)
    else
      render 'edit'
    end
  end

  def destroy
    @arrival = Arrival.find(params[:id])
    @arrival.destroy
    flash[:notice] = "This bus will no longer arrive at #{@arrival.names} at #{@arrival.time}"
    redirect_to arrivals_path
  end


  private
  def user_params
    params.require(:arrival).permit(:time, :stop_id, :bus_id)
  end
end
