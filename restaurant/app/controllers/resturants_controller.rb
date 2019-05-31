class ResturantsController < ApplicationController
  before_action :set_resturant, only: [:show]
  def index
    @resturants = Resturant.all
  end
  def show
  end

  private
  
  def set_resturant
    @resturant = Resturant.find(params[:id])
  end

  def resturant_params
    params.require(:resturant).permit(:name)
  end
end
