class ConcertsController < ApplicationController

  def index
    @concerts = Concert.all
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)

    if @concert.save
    flash[:notice] = "Concert added successfully"
    redirect_to @concert
    else
      render action: "new"
    end
  end

  def show
    @concert = Concert.find(params[:id])
  end

  private
  def concert_params
    params.require(:concert).permit(:artist, :show_date, :show_time, :description)
  end
end
