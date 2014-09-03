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

  private
  def user_params
    params.require(:bus).permit(:number, :line_id)
  end
end


