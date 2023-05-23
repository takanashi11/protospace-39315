class PrototypesController < ApplicationController
  def  index
  end

  def  new
    @prototyp = Prototyp.new
  end

  def create
    @prototyp = Prototyp.new(prototype_params)
    if  @prototyp.save
       redirect_to root_path
    else
     render :new
    end

  end

  private

  def prototype_params
    params.require(:prototyp).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end
end
