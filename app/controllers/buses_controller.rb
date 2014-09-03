class BusesController < ApplicationController
 def index
    @buses = Bus.all
  end

  def new
    @bus= Bus.new
  end

  def create
    @bus = Bus.create(user_params)
    if @bus.valid?
      flash[:notice] = "New Bus Added"
      redirect_to bus_path
    else
      render 'new'
    end
  end

  def show
    @bus = Bus.find(params[:id])
  end

  def edit
    @bus = Bus.find(params[:id])
  end

  def update
    @bus = Bus.find(params[:id])
    if @bus.update(user_params)
      flash[:notice] = "This bus has been updated"
      redirect_to bus_path(@bus)
    else
      render 'edit'
    end
  end

  def destroy
    @bus = Bus.find(params[:id])
    @bus.destroy
    flash[:notice]= "Bus number #{@bus.number} has been deleted."
    redirect_to buses_path
  end

  private
  def user_params
    params.require(:bus).permit(:number, :line_id)
  end
end


