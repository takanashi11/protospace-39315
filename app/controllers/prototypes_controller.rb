class PrototypesController < ApplicationController
  def  index
  end

  def  new
    @prototype = Prototyp.new
  end

  def create
  end
end
