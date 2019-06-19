class ReviewsController < ApplicationController
    before_action :authenticate_user!, except: [:index]
    before_action :set_resturant, except: [:index]
    before_action :set_review, only: [:show, :edit, :update]
    before_action :set_review_dest, only: [:destroy]

  def index
    if params[:user_id]
      @reviews = Review.where(user_id: params[:user_id]).order(created_at: :asc).page(params[:page]).per(2)
    else 
      @reviews = Review.all
    end
  end 

  def show
  end

  def new
    @review = current_user.reviews.new
  end

  def edit
  end

  def create
    @review = current_user.reviews.new(review_params)
    @review.resturant_id = @resturant.id
    if @review.save
      redirect_to @resturant
    else
      render :new
    end
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to @resturant
    else
      render :edit
    end
  end
  
  def destroy
    @review.destroy
    redirect_to @resturant
  end

  private
  
    def set_review
      @review = current_user.reviews.find(params[:id])
    end

    def set_review_dest
      if(current_user.admin?)
        @review = Review.find(params[:id])
      else
        @review = current_user.reviews.find(params[:id])
      end
    end

    def set_resturant
      @resturant = Resturant.find(params[:resturant_id])
    end

    def review_params
      params.require(:review).permit(:title, :body)
    end

end
