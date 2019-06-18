class ImagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_resturant
  before_action :set_image, only: [:show]
  before_action :set_image_dest, only: [:destroy]
  def index
    @images = Image.all
  end
  def new

    @image = current_user.images.new

  end

  def create
    @image = current_user.images.new(image_params)
    @image.resturant_id = @resturant.id
    if @image.save
      redirect_to @resturant
    else
      render :new
    end
  end

  def destroy
    @image.destroy
    redirect_to @resturant
  end

  private
  def set_image
    @image = current_user.images.find(params[:id])
  end

  def set_image_dest
    if(current_user.admin?)
      @image = Image.find(params[:id])
    else
      @image = current_user.images.find(params[:id])
    end
  end

  def set_resturant
    @resturant = Resturant.find(params[:resturant_id])
  end
  def image_params
    params.require(:image).permit(:description, :image, :user_id)
  end
end
