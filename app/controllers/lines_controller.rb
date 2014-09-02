class LinesController < ApplicationController
  def index
    @lines = Line.all
  end

  def new
    @line = Line.new
  end

  def create
    @line = Line.create(user_params)
    if @line.valid?
      flash[:notice] = "Line created"
      redirect_to lines_path
    else
      render 'new'
    end
  end

  def show
    @line = Line.find(params[:id])
  end

  def edit
    @line = Line.find(params[:id])
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(user_params)
      flash[:notice] = "Line has been updated"
      redirect_to line_path(@line)
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    @line.delete
    flash[:notice] = "Line has been destroyed"
    redirect_to lines_path
  end

  private
  def user_params
    params.require(:line).permit(:name)
  end
end
