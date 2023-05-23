class PrototypesController < ApplicationController
  def  index
  end

  def  new
    @prototype = Prototyp.new
  end

  def create
    Prototyp.create(prototype_params)
    @prototype.save
    if 
     redirect_to root_path
    else
     render :new
    end

  end

  private

  def prototype_params
    params.require(:prototyp).permit(:image).merge(user_id: current_user.id)
  end
end
