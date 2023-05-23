class PrototypesController < ApplicationController
  def  index
  end

  def  new
    @prototype = Prototyp.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if  @prototype.save
       redirect_to root_path
    else
     render :new
    end

  end

  private

  def prototype_params
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end
end
