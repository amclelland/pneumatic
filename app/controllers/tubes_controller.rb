class TubesController < ApplicationController
  require 'humanize'
  
  def index
    @tubes = Tube.all
    @width = (12 / @tubes.count).humanize if @tubes.count > 0
  end
  
  def new
    @tube = Tube.new
  end
  
  def create
    @tube = Tube.create(tube_params)
    
    if @tube.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def destroy
    @tube = Tube.find(params[:id])
    @tube.destroy
    
    redirect_to root_path
  end
  
  private
  
  def tube_params
    params.require(:tube).permit(:name)
  end
end
