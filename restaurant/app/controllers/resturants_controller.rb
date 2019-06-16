class ResturantsController < ApplicationController
  before_action :set_resturant, only: [:show]
  def index
    @resturants = Resturant.order(created_at: :asc).page(params[:page]).per(5)
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
