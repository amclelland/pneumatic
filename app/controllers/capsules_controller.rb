class CapsulesController < ApplicationController
  def new
    @tube = Tube.find(params[:tube_id])
    @capsule = Capsule.new
  end
  
  def create
    @tube = Tube.find(params[:tube_id])
    @capsule = @tube.capsules.create(capsule_params)
    
    if @capsule.save
      redirect_to root_path
    else
      render :new
    end
  end
  
  def destroy
    @capsule = Capsule.find(params[:id])
    @capsule.destroy
    
    redirect_to root_path
  end
  
  private
  
  def capsule_params
    params.require(:capsule).permit(:url)
  end
end
