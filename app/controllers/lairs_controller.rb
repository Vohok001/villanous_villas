class LairsController < ApplicationController

  def show
    @lair = Lair.find(params[:id])
  end
end
